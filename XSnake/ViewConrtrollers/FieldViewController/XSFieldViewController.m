//
//  XSFieldViewController.m
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSFieldViewController.h"
#import "XSGraphicsHelper.h"

@interface XSFieldViewController ()

@property (nonatomic, strong) UIImageView *canvas;
@property (nonatomic, strong) XSGraphicsHelper *gHelper;
@property (nonatomic, strong) XSGameController *gameController;

@end


@implementation XSFieldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.gameController = [XSGameController new];
    self.gHelper = [XSGraphicsHelper new];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self drawGameField];
    
//    [self.gameController startGame];
}



#pragma mark -
#pragma mark Drawing

- (void)drawGameField
{
    self.canvas = [[UIImageView alloc] initWithFrame:self.view.frame];
    self.canvas.image = [self.gHelper imageWithSize:self.view.frame.size
                                              color:[UIColor greenColor]];

    self.gHelper.lineWidth = 4.0;
    self.gHelper.currentColor = [UIColor redColor];
    
    self.canvas.image = [[self gHelper] lineFrom:CGPointMake(10, 10) to:CGPointMake(10, 20) image:self.canvas.image];
    
    [self.view addSubview:self.canvas];
}

- (void)displaySnakeToMatrix
{
    
}

@end
