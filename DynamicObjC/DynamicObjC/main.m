//
//  main.m
//  DynamicObjC
//
//  Created by Cory Alder on 2016-07-01.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Game.h"
#import "NSArray+ContentChecking.h"

typedef enum : NSUInteger {
    Red = 0,
    Green = 1,
    Blue = 2,
} Colour;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // // Dealing with enums:
        
//        Colour myColour = Red; // actually stored as 0 when the app is running, "Red" doesn't exist after compilation.
        
        // // Translate an enum to a string:
        
//        if (myColour == Red) {
//            return @"Red";
//        } else if (myColour == Blue) {
//            return @"Blue";
//        }
        
        // // Ask an array what class it is.
        
//        id someArray = [[NSMutableArray alloc] init];
//        
//        
//        if ([someArray isKindOfClass:[NSArray class]]) {
//            NSLog(@"I found an array");
//        }
        
        // // objects contains objects of mixed types
        
        NSArray *objects = @[
                             @"some string",
                             @"another string",
                             @[], // responds to 'count' selector
                             [[NSDate alloc] init],
                             @[], // responds to 'count' selector
                             @"final string",
                             @{} // responds to 'count' selector
                             ];
        
        int stringCount = 0; // lets count up all the strings in my array
        
        for (id object in objects) {
            
            NSLog(@"This is a %@", [[object class] description]); // print a description
            
            if ([object isKindOfClass:[NSString class]]) { // "introspect" an object.
                stringCount++;
            }
        }
        
        NSLog(@"The array has %i strings in it", stringCount);
        
        
        
        
        
        NSString *someObject = [objects firstObject]; // since the "objects" array doesn't know what type of objects it contains, we cast the contents into a variable.
        
        
        

        
        
        NSString *selectorString = @"count";
        
        SEL someSelector = NSSelectorFromString(selectorString);
        SEL someSelector2 = @selector(insertObject:atIndex:);
        
        if (someSelector == someSelector2) {
            NSLog(@"these are the same");
        }
        
        for (id object in objects) {
            if ([object respondsToSelector:someSelector]) {
//                [object performSelector:someSelector];
//                [object performSelector:<#(SEL)#> withObject:<#(id)#> withObject:<#(id)#>]
                [object count];
                NSLog(@"the object %@ can be counted", object);
            }
            
            
        }
        
        NSArray *stringArray = @[@"somestirng", @"",@"",@""];
        
        [stringArray countOfStrings];
        
        NSLog(@"the objects array contains %i strings", [objects countOfStrings]);
        
        
        
        
        
        // printing out the description of an object
        
        Game *game = [[Game alloc] init];
        
        Player *player = [[Player alloc] init];
        player.health = 10;
        
        NSLog(@"My player is %@", player); // player has an overridden description method.

        player.delegate = game;
        [player takeDamage:5];
        [player takeDamage:5];
        
    }
    return 0;
}
