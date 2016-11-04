//
//  Game.m
//  DynamicObjC
//
//  Created by Cory Alder on 2016-07-01.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//

#import "Game.h"

@implementation Game

#pragma mark - PlayerDelegate Methods
- (void)playerHasDied {
// restart game?
    NSLog(@"player has died, you are dead.");
}

- (void)playerTookDamage {
    NSLog(@"Player took damage");
}

- (void)explode {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    NSLog(@"\n\n*************************************\n|\t#####\t|-XP|_0DEEEEEEE\t#####\t|\n*************************************\n\n");
}

@end
