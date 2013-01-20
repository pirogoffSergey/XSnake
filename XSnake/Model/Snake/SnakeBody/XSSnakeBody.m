//
//  XSSnakeBody.m
//  XSnake
//
//  Created by Oxygen on 20.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSSnakeBody.h"
#import "XSNode.h"

@interface XSSnakeBody ()

@property (nonatomic, strong) NSMutableArray *body; //XSNode(s)
@property (nonatomic, assign) int length;

@end



@implementation XSSnakeBody

- (id)init
{
    self = [self initWithDirection:right];
    if(self) {
        
    }
    return self;
}

- (id)initWithDirection:(MoveDirection)direction
{
    self = [super init];
    if(self) {
        CGPoint initHead = CGPointMake(2, 0);
        CGPoint initBody = CGPointMake(1, 0);
        CGPoint initTail = CGPointMake(0, 0);
        
        XSHead *head = [[XSHead alloc] initWithLocation:initHead direction:direction];
        XSNode *body = [[XSNode alloc] initWithLocation:initBody direction:direction];
        XSTail *tail = [[XSTail alloc] initWithLocation:initTail direction:direction];
        
        self.body = [NSMutableArray arrayWithObjects:head, body, tail, nil];
        self.length = 3;
    }
    return self;
}


#pragma mark -
#pragma mark Public Methods

- (void)addNode {

    XSNode *newNode = [[XSNode alloc] initWithLocation: self.tail.location direction:self.tail.direction];
    [self addNodeToBody:newNode];
}


#pragma mark -
#pragma mark Private Methods

- (XSHead *)head
{
    return (XSHead *)[self.body objectAtIndex:0];
}

- (XSTail *)tail
{
    return (XSTail *)[self.body objectAtIndex: self.body.count-1];
}

- (void)addNodeToBody:(XSNode *)node
{
    XSTail *tail = [self tail];
    [tail move:invertDirection(tail.direction)];
    
    [self.body insertObject:node atIndex:self.body.count-2]; //insert front the tail

    self.length++;
}

@end



