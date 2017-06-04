//
//  Player.m
//  Snakes & Ladders
//
//  Created by Noor Alhoussari on 2017-06-03.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "Player.h"

@interface Player ()

@property NSDictionary* gameLogic;

@end

@implementation Player

- (instancetype)init {
    self = [super init];
    if (self) {
        _currentSquare = 0;
//        _gameOver = NO;
        _gameLogic = [[NSDictionary alloc]initWithObjectsAndKeys:
                      @"Ladder", [NSNumber numberWithInt:4],
                      @"Ladder", [NSNumber numberWithInt:9],
                      @"Ladder", [NSNumber numberWithInt:20],
                      @"Ladder", [NSNumber numberWithInt:28],
                      @"Ladder", [NSNumber numberWithInt:40],
                      @"Ladder", [NSNumber numberWithInt:51],
                      @"Ladder", [NSNumber numberWithInt:63],
                      @"Snake", [NSNumber numberWithInt:17],
                      @"Snake", [NSNumber numberWithInt:64],
                      @"Snake", [NSNumber numberWithInt:89],
                      @"Snake", [NSNumber numberWithInt:95],
                      @"Snake", [NSNumber numberWithInt:99], nil];
    }
    return self;
}

-(void) roll{
    int roll = arc4random_uniform(6) + 1;
    NSLog(@"Your dice is: %d", roll);
    int currentValue = roll + _currentSquare;
    

    BOOL currentValueExistInKey = NO;

    for (NSNumber *keyNumber in _gameLogic){
        int keyInt = [keyNumber intValue];
        if (keyInt == currentValue){
            currentValueExistInKey = YES;
            break;
        }
    }

    if (currentValueExistInKey == NO){
        _currentSquare = currentValue;
//        NSLog(@"Your current square is: %li", (long)_currentSquare);
    
    } else {
        if(currentValue == 4){
            _currentSquare =14;
            NSLog(@"Yeey! 😇 you reached a ladder!. Now you jumped to the square:  %li", (long)_currentSquare);
            
        } else if(currentValue == 9){
            _currentSquare =31;
            NSLog(@"Yeey! 😇 you reached a ladder!. Now you jumped to the square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 20){
            _currentSquare =38;
            NSLog(@"Yeey! 😇 you reached a ladder!. Now you jumped to the square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 28){
            _currentSquare =84;
            NSLog(@"Yeey! 😇 you reached a ladder!. Now you jumped to the square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 40){
            _currentSquare =59;
            NSLog(@"Yeey! 😇 you reached a ladder!. Now you jumped to the square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 51){
            _currentSquare =67;
            NSLog(@"Yeey! 😇 you reached a ladder!. Now you jumped to the square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 63){
            _currentSquare =81;
            NSLog(@"Yeey! 😇 you reached a ladder!. Now you jumped to the square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 17){
            _currentSquare =7;
            NSLog(@"Oops! 🐍 you reached a Snake. You went back to square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 64){
            _currentSquare =60;
            NSLog(@"Oops! 🐍 you reached a Snake. You went back to square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 89){
            _currentSquare =26;
            NSLog(@"Oops! 🐍 you reached a Snake. You went back to square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 95){
            _currentSquare =75;
            NSLog(@"Oops! 🐍 you reached a Snake. You went back to square:  %li", (long)_currentSquare);
            
        } else if (currentValue == 99){
            _currentSquare =78;
            NSLog(@"Oops! 🐍 you reached a Snake. You went back to square:  %li", (long)_currentSquare);
            
        }
    }
}
//
//-(BOOL) isGameOver{
//    if (_currentSquare >= 100){
//        _gameOver = YES;
//    }
//    return _gameOver;
//}

@end
