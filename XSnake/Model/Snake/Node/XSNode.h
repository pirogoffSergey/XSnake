//
//  XSNode.h
//  XSnake
//
//  Created by Oxygen on 20.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface XSNode : NSObject

@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign) MoveDirection direction;

- (id)initWithLocation:(CGPoint)pt;
- (id)initWithLocation:(CGPoint)pt direction:(MoveDirection)dir;

- (void)move:(MoveDirection)direction;


- (BOOL)isLocationEqualToPoint:(CGPoint)pt;

@end
