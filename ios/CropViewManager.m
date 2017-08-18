//
//  CropViewManager.m
//  LiveInk
//
//  Created by Swarup Mahanti on 8/1/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "CropViewManager.h"
#import "LiveInk-Swift.h"

@implementation CropViewManager

RCT_EXPORT_MODULE()

RCT_CUSTOM_VIEW_PROPERTY(maskColor, UIColor, CropView)
{
  UIColor* color = json ? [RCTConvert UIColor:json] : [UIColor whiteColor];
  [view setMaskColorWithColor:color];
}

RCT_CUSTOM_VIEW_PROPERTY(maskBorderWidth, CGFloat, CropView)
{
  CGFloat width = json ? [RCTConvert CGFloat:json] : 1.0;
  [view setMaskBorderWidthWithBorder:width];
}

RCT_EXPORT_VIEW_PROPERTY(onCropBoxChange, RCTDirectEventBlock);


- (UIView*)view
{
  //return [[NoteView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
  CropView* wbView = [[CropView alloc] init];
  //drawView.dataDelegate = self;

  return wbView;

}
@end
