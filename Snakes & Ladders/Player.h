//
//  Player.h
//  Snakes & Ladders
//
//  Created by Noor Alhoussari on 2017-06-03.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSString *name;

@property int currentSquare;


-(void) roll;

//-(BOOL) isGameOver;

@end
