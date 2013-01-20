//
//  XSSnakeBody.h
//  XSnake
//
//  Created by Oxygen on 20.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XSHead.h"
#import "XSTail.h"


@interface XSSnakeBody : NSObject

- (id)initWithDirection:(MoveDirection)direction;

- (XSHead *)head;
- (XSTail *)tail;
- (void)addNode;

@end
