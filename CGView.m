//
//  CGViewe.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 20/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "CGView.h"

@implementation CGView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    CGPoint center;
    center.x  = bounds.origin.x + bounds.size.width /2.0;
    center.y  = bounds.origin.y + bounds.size.height /2.0;
    CGContextSetLineWidth(ctx, 10);
    CGContextSetRGBStrokeColor(ctx, .6, .6, .6, 1.0);
    int radius = 80;
    CGContextAddArc(ctx, center.x, center.y, radius, 0, M_PI * 2 , YES);
    CGContextStrokePath(ctx);
    
    CGContextMoveToPoint(ctx, center.x, center.y+ 10);
    CGContextAddLineToPoint(ctx, center.x, center.y + radius + 10);
    CGContextStrokePath(ctx);
    
    CGContextMoveToPoint(ctx, center.x, center.y- 10);
    CGContextAddLineToPoint(ctx, center.x, center.y -  radius - 10);
    CGContextStrokePath(ctx);

    CGContextMoveToPoint(ctx, center.x +10 , center.y);
    CGContextAddLineToPoint(ctx, center.x + radius + 10 , center.y);
    CGContextStrokePath(ctx);

    CGContextMoveToPoint(ctx, center.x - 10 , center.y);
    CGContextAddLineToPoint(ctx, center.x - radius - 10 , center.y);
    CGContextStrokePath(ctx);
}


@end
