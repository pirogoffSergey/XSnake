//
//  XSSnake.m
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSSnake.h"
#import "XSHelper.h"


@interface XSSnake ()

- (void)addVertex:(XSVertex *)vertex;

@end


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
        
        [self moveSnake];
        return; //already go this direction
    }
    
    if(direction == invertDirection(self.currentMoveDirection)) {
        return; //can't change direction to opposite
    }
    
    XSVertex *vertex = [[XSVertex alloc] initWithLocation:[self head].location direction:direction];
    [self addVertex:vertex];
    
    [self moveSnake];
}

- (void)moveSnake
{
    XSVertex *vertex;
    for(XSNode *node in self.snakeBody.allNodes) {
        
        vertex = [self isNodeOnVertex:node];
        if(vertex) {
            node.direction = vertex.direction;
        }
        [node move:node.direction];
    }
}

- (XSVertex *)isNodeOnVertex:(XSNode *)node
{
    for(XSVertex *ver in self.vertexes) {
        if([node isLocationEqualToPoint:ver.location]) {
            return ver;
        }
    }
    return nil;
}

@end





