//
//  main.m
//  Snakes & Ladders
//
//  Created by Noor Alhoussari on 2017-06-03.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputController.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        InputController *inputController = [[InputController alloc] init];
        
        PlayerManager *playerManager = [[PlayerManager alloc]init];
        
        NSLog (@"Welcome to Snakes & Ladders!");
        NSLog (@"Choose number of players");
        
        while (TRUE){
            
            NSString *inputPlayers = [inputController inputTrimString];
            
            //checking if input is an int
            if (![inputPlayers intValue]){
                NSLog(@"Invalid entry. Please enter a number for players");
                continue;
                
            } else {
                
                int inputPlayersAnInt = [inputPlayers intValue];
                [playerManager createPlayers:inputPlayersAnInt];
                
                NSLog(@"%@ to roll the dice to play'r'", playerManager.currentPlayer.name);

                NSString *input = [inputController inputTrimString];
                
                while ([input isEqualToString:@"r"]){
                    
                    [playerManager roll: playerManager.currentPlayer];
                    NSLog(@"%@", [playerManager score]);
                    if(!playerManager.gameOver){
                        NSLog (@"Roll again to continue 'r' or quit 'q'");
                        NSString *input = [inputController inputTrimString];
                    
                        if ([input isEqualToString:@"r"]){
                            continue;
                        } else if ([input isEqualToString:@"q"]){
                            playerManager.players = nil;
                            break;
                        }
                    } else {
                        NSLog(@"Game is over! the final score is: %@", playerManager.score);
                        playerManager.players = nil;
                        break;
                    }
                }
            }
        }
    }
    return 0;
}
