//
//  XSVertex.m
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSVertex.h"

@implementation XSVertex

- (id)initWithLocation:(CGPoint)pt direction:(MoveDirection)dir
{
    self = [super init];
    if(self) {
        self.location = pt;
        self.direction = dir;
    }
    return self;
}

@end
