//
//  XSMatrix.m
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

#import "XSMatrix.h"


@interface XSMatrix ()

@property (nonatomic, strong) NSMutableArray *base; //keeps columns

@end


@implementation XSMatrix

- (id)init
{
    return [self initWithWidth:10 height:10];
}

- (id)initWithWidth:(int)width height:(int)height
{
    self = [super init];
    if(self) {
        self.width = width;
        self.height = height;
        
        self.base = [self createMatrix:self.width height:self.height];
    }
    return self;
}


#pragma mark -
#pragma mark Public Methods

- (int)objectAtRow:(int)rowIndex column:(int)columnIndex
{
    NSNumber *cell = [(NSArray *)[self.base objectAtIndex:columnIndex] objectAtIndex:rowIndex];
    return cell.intValue;
}

- (void)writeObject:(int)elem atRow:(int)rowIndex column:(int)columnIndex
{
    NSMutableArray *column = (NSMutableArray *)[self.base objectAtIndex:columnIndex];
    [column replaceObjectAtIndex:rowIndex withObject:[NSNumber numberWithInt:elem]];
    [self.base replaceObjectAtIndex:columnIndex withObject:column];
}

- (NSString *)toString
{
    NSMutableString *result = [NSMutableString string];
    
    NSArray *col;
    for(int i=0; i<self.base.count; i++) {
        for(int j=0; j<self.base.count; j++) {
            col = [self.base objectAtIndex:j];
            [result appendFormat:@" %@", [col objectAtIndex:i]];
        }
        [result appendFormat:@"\n"];
    }
    return result;
}


#pragma mark -
#pragma mark Private Methods

- (NSMutableArray *)createMatrix:(int)width height:(int)height
{
    NSMutableArray *matrix = [NSMutableArray array];
    
    for(int i=0; i<width; i++) {

        NSMutableArray *column = [NSMutableArray array];
        for(int j=0; j<height; j++) {
            [column addObject:@0];
        }
        [matrix addObject:column];
    }
    return matrix;
}

@end






