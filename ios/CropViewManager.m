//
//  CropViewManager.m
//  LiveInk
//
//  Created by Swarup Mahanti on 8/1/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "CropViewManager.h"
#import "CropView.h"

@implementation CropViewManager

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(maskBorderWidth, CGFloat)

RCT_EXPORT_VIEW_PROPERTY(maskColor, UIColor)

RCT_EXPORT_VIEW_PROPERTY(onCropBoxChange, RCTDirectEventBlock);


- (UIView*)view
{
  //return [[NoteView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
  CropView* cropview = [[CropView alloc] init];
  //drawView.dataDelegate = self;

  return cropview;

}
@end
