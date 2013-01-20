//
//  XSVertex.h
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSVertex : NSObject

@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign) MoveDirection direction;

- (id)initWithLocation:(CGPoint)pt direction:(MoveDirection)dir;

@end
