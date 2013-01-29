//
//  XSGameController.h
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XSSnake.h"


@interface XSGameController : NSObject

@property (nonatomic, strong) XSSnake *snake;

- (void)startGame;
- (void)changeDirection:(MoveDirection)direction;

@end
