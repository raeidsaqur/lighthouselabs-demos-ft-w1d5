//
//  Player.h
//  DynamicObjC
//
//  Created by Cory Alder on 2016-07-01.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//
//  Modified by Raeid Saqur on 2016-09-28
//

#import <Foundation/Foundation.h>

@protocol PlayerDelegate <NSObject>

//Default required, no need to add it explicitly.
//@required
-(void)playerHasDied;
-(void)playerTookDamage;

@optional
-(void)explode;

@end


@interface Player : NSObject

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, readwrite) int health;

//RS: Changing reference type to 'weak' to avoid retain cycle
@property (nonatomic, weak) id<PlayerDelegate> delegate;

-(void)takeDamage:(int)howMuch;

@end
