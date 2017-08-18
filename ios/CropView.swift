//
//  CropView.swift
//  LiveInk
//
//  Created by Swarup Mahanti on 8/1/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation

class CropView: UIView {

  private var maskBorder: CGFloat = 1.0
  private var maskColor: UIColor = UIColor.clear {
    didSet{
      DEBUGPRINT("\(maskColor)")
      //cropControl.backgroundColor = maskColor
    }
  }
  var controlIcons = [ControlPointIcon]()
  var controlRect: ControlRect?
  var touchedIcon: ControlPointIcon?
  var cropBox: CGRect? = nil
  var touchBegin: CGPoint = CGPoint.zero
  var onCropBoxChange: RCTDirectEventBlock!{
    didSet{
      DEBUGPRINT("\(onCropBoxChange)")
    }
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    //self.addSubview(cropControl)
    self.backgroundColor = UIColor.init(white: 0.1, alpha: 0.5)
    if cropBox == nil {
      cropBox = self.bounds.insetBy(dx: 100, dy: 100)
      createControlIcons()
      sync(box: cropBox!)
    }
  }

  func createControlIcons() {
    for icon in controlIcons {
      icon.removeFromSuperview()
    }
    controlIcons.removeAll()
    for i in 0..<8 {
      let icon = ControlPointIcon(bbox: cropBox!, idx:i)
      icon.isUserInteractionEnabled = false
      self.addSubview(icon)
      controlIcons.append(icon)
    }
  }

  func setMaskBorderWidth(border: CGFloat) {
    maskBorder = border
  }
  func setMaskColor(color: UIColor) {
    maskColor = color
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let touch = touches.first else {
      return
    }
    touchBegin = touch.location(in: self)
    touchedIcon = iconTouched(point: touchBegin)
    touchedIcon?.activate(resize: true)
    let corner: Int = touchedIcon?.i ?? -1
    if corner != -1 {
      controlRect = ControlRect.init(rect: cropBox!, idx: corner)
    }
  }

  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let touch = touches.first else {
      return
    }
    if touchedIcon != nil {
      resize(icon: touchedIcon!, from: touchBegin, to: touch.location(in: self))
    }else {
      move(from: touch.previousLocation(in: self), to: touch.location(in: self))
      updateControlIcons()
    }
    self.setNeedsDisplay()
  }

  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    touchedIcon?.deactivate()
    sync(box: cropBox!)
  }

  func sync(box: CGRect){
    var data: [String: Any?] = [String: Any?].init()
    data["box"] = box.toJSON()
    self.onCropBoxChange(data)
  }

  func move(from: CGPoint, to: CGPoint) {
    let dx = to.x - from.x
    let dy = to.y - from.y
    var center = cropBox!.center
    center.x += dx
    center.y += dy
    cropBox = CGRect.init(x: center.x - cropBox!.width/2, y: center.y - cropBox!.height/2, width: cropBox!.width, height: cropBox!.height)
  }

  func resize(icon:ControlPointIcon, from: CGPoint, to: CGPoint){
    cropBox = getFrame(dx: to.x - from.x, dy: to.y - from.y)
    updateControlIcons()
  }

  func updateControlIcons() {
    for icon in controlIcons {
      icon.updateFrame(bbox: cropBox!)
    }
  }

  func getFrame(dx: CGFloat, dy:CGFloat) -> CGRect {
    controlRect!.dragControlPoint(dx: dx, dy: dy)
    return controlRect!.frame
  }

  func iconTouched(point: CGPoint) -> ControlPointIcon? {
    for icon in controlIcons {
      if icon.frame.contains(point) {
        return icon
      }
    }
    return nil
  }

  override func draw(_ rect: CGRect) {
    super.draw(rect)

    let context: CGContext = UIGraphicsGetCurrentContext()!
    context.saveGState()

    context.clear(cropBox!)
    context.setBlendMode(CGBlendMode.clear)
    context.setFillColor(UIColor.init(white: 0.0, alpha: 0.0).cgColor)
    context.fill(cropBox!)
    context.restoreGState()
  }
}
