//
//  XSGameController.m
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSGameController.h"

@interface XSGameController ()

@property (nonatomic, strong) NSTimer *timer;

@end


@implementation XSGameController

- (id)init
{
    self = [super init];
    if(self) {
        self.snake = [[XSSnake alloc] init];
    }
    return self;
}


#pragma mark -
#pragma mark Timer

- (void)startTimer
{
    if(!self.timer || ![self.timer isValid]) {
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(tick)
                                                    userInfo:nil
                                                     repeats:YES];
    }
}

- (void)stopTimer
{
    if ([self.timer isValid]) {
        [self.timer invalidate];
        self.timer = nil;
        NSLog(@"timer stopped");
    }
}

- (void)tick
{
    NSLog(@"tick");
}


#pragma mark -
#pragma mark Public Methods

- (void)startGame
{
    
}

@end
