//
//  NSArray+ContentChecking.m
//  DynamicObjC
//
//  Created by Cory Alder on 2016-07-01.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//

#import "NSArray+ContentChecking.h"

@implementation NSArray (ContentChecking)


-(NSUInteger)countOfStrings {
    
    int stringCount = 0; // lets count up all the strings in my array
    
    for (id object in self) {
        if ([object isKindOfClass:[NSString class]]) { // "introspect" an object.
            stringCount++;
        }
    }
    
    return stringCount;
}

@end
