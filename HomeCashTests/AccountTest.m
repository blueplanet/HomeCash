//
//  AccountTest.m
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/03.
//  Copyright 2011年 MySource. All rights reserved.
//

#import "AccountTest.h"

@implementation AccountTest

- (void)setUp {
    NSManagedObjectContext *moc = [DataStore sharedContext];
    Account *newAccount = [NSEntityDescription insertNewObjectForEntityForName:[Account entityName] inManagedObjectContext:moc];
    
    newAccount.type = kAccountTypeAssets;
    newAccount.name = @"当座";
    newAccount.sortNo = [NSNumber numberWithInt:1];
    [DataStore save];
}

- (void)testAddAccount {
    NSManagedObjectContext *moc = [DataStore sharedContext];
    Account *newAccount = [NSEntityDescription insertNewObjectForEntityForName:[Account entityName] inManagedObjectContext:moc];
    
    newAccount.type = kAccountTypeAssets;
    newAccount.name = @"現金";
    newAccount.sortNo = [NSNumber numberWithInt:2];
    
    STAssertTrue([DataStore save], @"新規追加は正常");
}

- (void)testUpdate {
    NSManagedObjectContext *moc = [DataStore sharedContext];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = %@" argumentArray:[NSArray arrayWithObject:@"当座"]];
    
    Account *bank = (Account *)[Account firstWithCondition:predicate managedObjectContext:moc];
    bank.name = @"当座預金";
    bank.sortNo = [NSNumber numberWithInt:3];
    
    STAssertTrue([DataStore save], @"更新は正常");
}

- (void)testDelete {
    NSManagedObjectContext *moc = [DataStore sharedContext];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = %@" argumentArray:[NSArray arrayWithObject:@"当座"]];
    
    Account *bank = (Account *)[Account firstWithCondition:predicate managedObjectContext:moc];
    [moc deleteObject:bank];
    
    STAssertTrue([DataStore save], @"削除は正常");
}

@end
