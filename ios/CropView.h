//
//  CropInterface.h
//  LiveInk
//
//  Created by Swarup Mahanti on 8/23/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <React/RCTView.h>
#import <React/UIView+React.h>


@interface CropView : UIView

@property (nonatomic, assign) CGFloat maskBorder;
@property (nonatomic, assign) UIColor* maskColor;
@property (nonatomic, copy) RCTDirectEventBlock onCropBoxChange;

@end
