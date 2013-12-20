//
//  CustomImage.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 20/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "CustomImage.h"

@implementation CustomImage

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}





// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef ctx  = UIGraphicsGetCurrentContext();
    UIImage * logoImage  = [UIImage imageNamed:@"bnr-twitter-logo"];
    CGContextDrawImage(ctx, self.bounds, logoImage.CGImage);
    

    CGRect bounds = [self bounds];
    CGPoint center;
    center.x  = bounds.origin.x + bounds.size.width /2.0;
    center.y  = bounds.origin.y + bounds.size.height /2.0;
    int radius = self.bounds.size.width/2;
    CGContextAddArc(ctx, center.x, center.y, radius, 0, M_PI * 2 , YES);
    CGContextStrokePath(ctx);

    
}


@end
