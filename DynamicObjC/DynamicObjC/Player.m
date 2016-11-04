//
//  Player.m
//  DynamicObjC
//
//  Created by Cory Alder on 2016-07-01.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//

#import "Player.h"

@interface Player ( )
@property (nonatomic, strong) NSString *name;
@end

@implementation Player


-(NSString *)description {
    return [[super description] stringByAppendingString:@"- woo!"];
//    return @"WOOOOO!";
}

-(void)takeDamage:(int)howMuch {
    self.health -= howMuch;
    
    if (self.health <= 0) {
        [self.delegate playerHasDied];
        if ([self.delegate respondsToSelector:@selector(explode)]) {
            [self.delegate explode];
        }
    } else {
        [self.delegate playerTookDamage];
    }
}

@end
