//
//  Game.m
//  DynamicObjC
//
//  Created by Cory Alder on 2016-07-01.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//

#import "Game.h"

@implementation Game

-(void)playerHasDied {
// restart game?
    NSLog(@"player has died, you are dead.");
}

-(void)playerTookDamage {
    NSLog(@"Player took damage");
}


@end
