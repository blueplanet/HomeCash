//
//  NSManagedObjectExt.m
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/04.
//  Copyright 2011年 MySource. All rights reserved.
//

#import "NSManagedObjectExt.h"

@interface NSManagedObject (PrivateMethod)

+ (NSFetchRequest *)fetchRequestWithPredicate:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)managedObjectContext;
+ (NSArray *)executeFetchRequest:(NSFetchRequest *)fetchRequest managedObjectContext:(NSManagedObjectContext *)managedObjectContext;

@end

@implementation NSManagedObject (Entity)

+ (NSString *)entityName {
    return [[self class] description];
}

+ (NSArray *)findAllWithCondition:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)managedObjectContext;{
    NSFetchRequest *fetchRequest = [self fetchRequestWithPredicate:predicate managedObjectContext:managedObjectContext];
    
    return [self executeFetchRequest:fetchRequest managedObjectContext:managedObjectContext];
}

+ (id)firstWithCondition:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)managedObjectContext;{
    NSFetchRequest *fetchRequest = [self fetchRequestWithPredicate:predicate managedObjectContext:managedObjectContext];
    fetchRequest.fetchLimit = 1;
    
    NSArray *array = [self executeFetchRequest:fetchRequest managedObjectContext:managedObjectContext];
    if ([array count]) {
        return [array lastObject];
    }
    
    return nil;
}

+ (NSFetchRequest *)fetchRequestWithPredicate:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    fetchRequest.entity = [NSEntityDescription entityForName:[self entityName] inManagedObjectContext:managedObjectContext];
    fetchRequest.predicate = predicate;
    
    return fetchRequest;
}

+ (NSArray *)executeFetchRequest:(NSFetchRequest *)fetchRequest managedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    NSError *error;
    
    return [managedObjectContext executeFetchRequest:fetchRequest error:&error];
}

@end
