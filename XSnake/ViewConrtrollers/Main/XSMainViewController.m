//
//  XSMainViewController.m
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSMainViewController.h"
#import "XSMatrix.h"

@interface XSMainViewController ()

@end

@implementation XSMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.fieldVC = [[self storyboard] instantiateViewControllerWithIdentifier:@"fieldStoryboardID"];
    [self.fieldVC.view setFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:self.fieldVC.view];
}


#pragma mark -
#pragma mark Actions

- (IBAction)leftAction:(id)sender {
    
}

- (IBAction)upAction:(id)sender {
    
}

- (IBAction)rightAction:(id)sender {
    
}

- (IBAction)downAction:(id)sender {
    
}

@end
