//
//  XSMainViewController.h
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XSFieldViewController.h"

@interface XSMainViewController : UIViewController

@property (nonatomic, strong) XSFieldViewController *fieldVC;

- (IBAction)leftAction:(id)sender;
- (IBAction)upAction:(id)sender;
- (IBAction)rightAction:(id)sender;
- (IBAction)downAction:(id)sender;

@end
