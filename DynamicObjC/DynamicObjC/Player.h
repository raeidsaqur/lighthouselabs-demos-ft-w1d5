//
//  Player.h
//  DynamicObjC
//
//  Created by Cory Alder on 2016-07-01.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlayerDelegate <NSObject>

-(void)playerHasDied;
-(void)playerTookDamage;

@optional

-(void)explode;

@end


@interface Player : NSObject

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, readwrite) int health;

@property (nonatomic, strong) id<PlayerDelegate> delegate;

-(void)takeDamage:(int)howMuch;

@end
