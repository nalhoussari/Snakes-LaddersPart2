//
//  PlayerManager.h
//  Snakes & Ladders
//
//  Created by Noor Alhoussari on 2017-06-03.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray *players;

@property BOOL gameOver;

@property int currentIndex;

-(void) createPlayers: (int) numberOfPlayers;

-(void) roll: (Player *) playerPlaying;

-(Player *) currentPlayer;

-(NSString *) score;

@end
