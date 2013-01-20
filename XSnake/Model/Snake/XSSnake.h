//
//  XSSnake.h
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XSSnakeBody.h"
#import "XSVertex.h"


@interface XSSnake : NSObject

@property (nonatomic, strong) XSSnakeBody *snakeBody;
@property (nonatomic, strong) NSMutableArray *vertexes; //XSVertex(es)

- (MoveDirection)currentMoveDirection;
- (void)addVertex:(XSVertex *)vertex;
- (void)move:(MoveDirection)direction;

@end
