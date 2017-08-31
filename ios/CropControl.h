//
//  CropControl.h
//  LiveInk
//
//  Created by Swarup Mahanti on 8/23/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlexRectangle.h"

@interface CropControl : UIView
-(instancetype)initWithFrame:(CGRect)rect index:(CONTROL_INDEX)index;
-(void)activate:(BOOL)activate resize:(BOOL)resize;
-(CONTROL_INDEX)index;
-(void)deActivate;
@end
