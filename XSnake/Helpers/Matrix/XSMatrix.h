//
//  XSMatrix.h
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSMatrix : NSObject

- (id)initWithWidth:(int)width height:(int)height;
- (int)objectAtRow:(int)rowIndex column:(int)columnIndex;
- (void)writeObject:(int)elem atRow:(int)rowIndex column:(int)columnIndex;

- (NSString *)toString;

@end
