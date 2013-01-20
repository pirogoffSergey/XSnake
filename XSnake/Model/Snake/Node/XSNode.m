//
//  XSNode.m
//  XSnake
//
//  Created by Oxygen on 20.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSNode.h"

@implementation XSNode

- (id)initWithLocation:(CGPoint)pt
{
    self = [super init];
    if(self) {
        self.location = pt;
    }
    return self;
}

- (id)initWithLocation:(CGPoint)pt direction:(MoveDirection)dir
{
    self = [self initWithLocation:pt];
    if(self) {
        self.direction = dir;
    }
    return self;
}

- (void)move:(MoveDirection)direction
{
    switch (direction) {
        case left:
            self.location = CGPointMake(self.location.x-1, self.location.y);
            break;
            
        case up:
            self.location = CGPointMake(self.location.x, self.location.y-1);
            break;
            
        case right:
            self.location = CGPointMake(self.location.x+1, self.location.y);
            break;
            
        case down:
            self.location = CGPointMake(self.location.x, self.location.y+1);
            break;
            
        default:
            [NSException raise:@"SXNode Exception" format:@"Unknown direction in move:"];
            break;
    }
}

@end
