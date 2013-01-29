//
//  XSGraphicsHelper.m
//  XSnake
//
//  Created by Oxygen on 29.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSGraphicsHelper.h"

@implementation XSGraphicsHelper

- (UIImage *)lineFrom:(CGPoint)fromPoint to:(CGPoint)toPoint image:(UIImage *)image
{
    return [self lineFrom:fromPoint to:toPoint image:image withColor:self.currentColor lineWidth:self.lineWidth];
}

- (UIImage *)lineFrom:(CGPoint)fromPoint to:(CGPoint)toPoint image:(UIImage *)image withColor:(UIColor *)color lineWidth:(CGFloat)width
{
    //get components of color
    CGFloat red = 0, green = 0, blue = 0, alpha = 0;
    [color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    CGSize screenSize = image.size;
    UIGraphicsBeginImageContext(screenSize);
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    [image drawInRect:CGRectMake(0, 0, screenSize.width, screenSize.height)];
    
    CGContextSetLineCap(currentContext, kCGLineCapRound);
    CGContextSetLineWidth(currentContext, width);
    CGContextSetRGBStrokeColor(currentContext, red, green, blue, 1);
    CGContextBeginPath(currentContext);
    CGContextMoveToPoint(currentContext, fromPoint.x, fromPoint.y);
    CGContextAddLineToPoint(currentContext, toPoint.x, toPoint.y);
    CGContextStrokePath(currentContext);
    
    UIImage *ret = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return ret;
}

// Color+Rect -> UIImage
- (UIImage *)imageWithSize:(CGSize)size color:(UIColor *)aColor
{
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [aColor CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
