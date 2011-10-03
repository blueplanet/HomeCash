//
//  NSManagedObjectExt.m
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/04.
//  Copyright 2011年 MySource. All rights reserved.
//

#import "NSManagedObjectExt.h"

@implementation NSManagedObject (Entity)

+ (NSString *)entityName {
    return [[self class] description];
}

@end
