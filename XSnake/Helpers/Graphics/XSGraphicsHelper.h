//
//  XSGraphicsHelper.h
//  XSnake
//
//  Created by Oxygen on 29.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSGraphicsHelper : NSObject

@property (nonatomic, strong) UIColor *currentColor;
@property (nonatomic, assign) CGFloat lineWidth;

- (UIImage *)lineFrom:(CGPoint)fromPoint to:(CGPoint)toPoint image:(UIImage *)image;
- (UIImage *)imageWithSize:(CGSize)size color:(UIColor *)aColor;

@end
