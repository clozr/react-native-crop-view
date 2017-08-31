//
//  ControlRectangle.h
//  LiveInk
//
//  Created by Swarup Mahanti on 8/22/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "FlexRectangle.h"

@interface CropRectangle : NSObject

- (instancetype)initWith:(CGRect)rect;
- (void)touchDragged:(CGFloat)dx :(CGFloat)dy;
- (CGRect)rectRegion;
- (void)setPivotIndex:(CONTROL_INDEX)index;
- (CGPoint)pointForIndex:(CONTROL_INDEX)index;
- (void)setPivotLocation:(CGPoint)point;
+ (CGPoint)NorthWest:(CGRect)frame;
+ (CGPoint)NorthEast:(CGRect)frame;
+ (CGPoint)SouthEast:(CGRect)frame;
+ (CGPoint)SouthWest:(CGRect)frame;

@end
