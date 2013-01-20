//
//  Defines.h
//  XSnake
//
//  Created by Oxygen on 20.01.13.
//  Copyright (c) 2013 SP. All rights reserved.
//

typedef enum {
    left = 0,
    up = 1,
    right = 2,
    down = 3
} MoveDirection;

extern const struct AuthenticationPathes {
    __unsafe_unretained NSString* checkEmail;
    __unsafe_unretained NSString* checkUserName;
    __unsafe_unretained NSString* createAccount;
    __unsafe_unretained NSString* getAccountProfile;
    __unsafe_unretained NSString* pairDevice;
}AuthenticationPathes;

