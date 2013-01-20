//
//  XSHelper.m
//  XSnake
//
//  Created by Oxygen on 21.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//


inline MoveDirection invertDirection(MoveDirection dir){
    
    MoveDirection res;
    
    switch (dir) {
        case left:
            res = right;
            break;
            
        case up:
            res = down;
            break;
            
        case right:
            res = left;
            break;
            
        case down:
            res = up;
            break;
            
        default:
            res = 10;
            break;
    }
    return res;
}
