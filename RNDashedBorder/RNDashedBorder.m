//
//  RNDashedBorder.m
//  RNDashedBorder
//
//  Created by Chirag Jain on 5/7/15.
//  Copyright (c) 2015 Chirag Jain. All rights reserved.
//

#import "RNDashedBorder.h"
#import "RCTConvert.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@implementation RNDashedBorder {
  CAShapeLayer *_border;
}

- (instancetype)init
{
  if ((self = [super init])) {
    _border = [CAShapeLayer layer];
    _border.fillColor = nil;
    [self.layer addSublayer:_border];
  }

  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  _border.path = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
  _border.frame = self.bounds;
}

- (void)setColor:(NSString *)colorString
{
  _border.strokeColor = [RCTConvert UIColor:colorString].CGColor;
}

- (void)setLineDashPattern:(NSArray *)pattern
{
  _border.lineDashPattern = pattern;
}

@end
