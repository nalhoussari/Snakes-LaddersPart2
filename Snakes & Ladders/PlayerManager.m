//
//  PlayerManager.m
//  Snakes & Ladders
//
//  Created by Noor Alhoussari on 2017-06-03.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

//@interface PlayerManager ()
//
//@property NSDictionary* gameLogic;
//
//@end

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc]init];
        _gameOver = NO;
        _currentIndex = 0;
//        _gameLogic = [[NSDictionary alloc]initWithObjectsAndKeys:
//                      @"Ladder", [NSNumber numberWithInt:4],
//                      @"Ladder", [NSNumber numberWithInt:9],
//                      @"Ladder", [NSNumber numberWithInt:20],
//                      @"Ladder", [NSNumber numberWithInt:28],
//                      @"Ladder", [NSNumber numberWithInt:40],
//                      @"Ladder", [NSNumber numberWithInt:51],
//                      @"Ladder", [NSNumber numberWithInt:63],
//                      @"Snake", [NSNumber numberWithInt:17],
//                      @"Snake", [NSNumber numberWithInt:64],
//                      @"Snake", [NSNumber numberWithInt:89],
//                      @"Snake", [NSNumber numberWithInt:95],
//                      @"Snake", [NSNumber numberWithInt:99], nil];

    }
    return self;
}


-(void) createPlayers: (int) numberOfPlayers{
    // name associate in helping creating a unique name
    int nameAssociate = 1;
    
    for (int i = 0; i < numberOfPlayers; i++){
        Player *player = [[Player alloc]init];
        
        //creating a unique name
        NSString *nameAssociateString = [NSString stringWithFormat:@"%d", nameAssociate];
        NSString *nameFirstPart = @"Player";
        NSString *playerName = [nameFirstPart stringByAppendingString:nameAssociateString];
        player.name = playerName;
        
        nameAssociate++;
        
        // adding player to array of players
        [_players addObject:player];
        NSLog(@"Your player name is: %@", player.name);
    }
//    NSLog(@"Your players are: %@", self.playersNames);

}

-(NSString *) score{
    NSMutableString *score = [[NSMutableString alloc]initWithString: @"score: "];
    
    for(Player *player in _players){
        
        NSString *playerName = player.name;
        NSString *playerCurrentSquare = [NSString stringWithFormat:@"%d",player.currentSquare];
        [score appendFormat:playerName, @": ", playerCurrentSquare, @", "];
    }
    NSString *scoreString = score;
    return scoreString;
}


-(void) roll: (Player *) playerPlaying{
    
    [playerPlaying roll];
    NSLog(@"%@ moved to square: %d", self.currentPlayer.name, self.currentPlayer.currentSquare);
    _currentIndex++;
    
}

-(Player *) currentPlayer{
    
    Player *currentPlayer = [[Player alloc]init];
    
    if (_currentIndex < [_players count]){
        currentPlayer = [_players objectAtIndex:_currentIndex];
    } else {
        int currentPlayerIndex = _currentIndex % [_players count];
        currentPlayer = [_players objectAtIndex:currentPlayerIndex];
    }
    return currentPlayer;
}

- (BOOL)isGameOver{
    
    for(Player *player in _players){
        if (player.currentSquare >=100){
            _gameOver = YES;
        }
    }
    return _gameOver;
}



@end
