//
//  InputController.m
//  Snakes & Ladders
//
//  Created by Noor Alhoussari on 2017-06-03.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "InputController.h"

@implementation InputController

- (NSString *)inputTrimString {
    
    char input = '\0';
    fgets(&input, 255, stdin);
    NSString *result = [NSString stringWithCString: &input encoding: NSUTF8StringEncoding];
    
    NSCharacterSet *resultCharacter = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *finalResult = [result stringByTrimmingCharactersInSet:resultCharacter];
    return finalResult;
}

@end
