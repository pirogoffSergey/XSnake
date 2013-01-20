//
//  XSSnake.m
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSSnake.h"
#import "XSHelper.h"


@implementation XSSnake

- (id)init
{
    self = [super init];
    if(self) {
        self.snakeBody = [[XSSnakeBody alloc] init];
    }
    return self;
}

- (XSHead *)head
{
    return self.snakeBody.head;
}

- (XSTail *)tail
{
    return self.snakeBody.tail;
}


#pragma mark -
#pragma mark Public Methods

- (MoveDirection)currentMoveDirection
{
    return self.snakeBody.head.direction;
}

- (void)addVertex:(XSVertex *)vertex
{
    if(!self.vertexes) {
        self.vertexes = [NSMutableArray new];
    }
    [self.vertexes addObject:vertex];
}

- (void)move:(MoveDirection)direction
{
    if(self.currentMoveDirection == direction) {
        return; //already go this direction
    }
    
    if(direction == invertDirection(self.currentMoveDirection)) {
        return; //can't change direction to opposite
    }
    
//    XSVertex *vertex = [[XSVertex alloc] initWithLocation:[self head].location direction:direction];
//    [self addVertex:vertex];
//    
//    [[self head] move:direction];
    
}

@end





