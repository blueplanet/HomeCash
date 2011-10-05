//
//  JournalTest.m
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/05.
//  Copyright 2011年 MySource. All rights reserved.
//

#import "JournalTest.h"

@implementation JournalTest

- (void)setUp {
    NSManagedObjectContext *moc = [DataStore sharedContext];
    
    cash_ = [NSEntityDescription insertNewObjectForEntityForName:[Account entityName] inManagedObjectContext:moc];
    cash_.type = [NSNumber numberWithInt: kAccountTypeAssets];
    cash_.name = @"現金";
    
    bank_ = [NSEntityDescription insertNewObjectForEntityForName:[Account entityName] inManagedObjectContext:moc];
    bank_.type = [NSNumber numberWithInt:kAccountTypeAssets];
    bank_.name = @"当座";
    
    visa_ = [NSEntityDescription insertNewObjectForEntityForName:[Account entityName] inManagedObjectContext:moc];
    visa_.type = [NSNumber numberWithInt: kAccountTypeLiabilities];
    visa_.name = @"VISA";
    
    sales_ = [NSEntityDescription insertNewObjectForEntityForName:[Account entityName] inManagedObjectContext:moc];
    sales_.type = [NSNumber numberWithInt:kAccountTypeExpense];
    sales_.name = @"飲み物";
}

- (void)tearDown {
    [cash_ release];
    [bank_ release];
    [visa_ release];
    [sales_ release];
}

- (void)testBaseProperty {
    NSUInteger cashCount = [[cash_ debit_journals] count];
    NSUInteger salesCount = [[sales_ credit_journals] count];
    
    NSManagedObjectContext *moc = [DataStore sharedContext];
    Journal *new = [NSEntityDescription insertNewObjectForEntityForName:[Journal entityName] inManagedObjectContext:moc];
    
    new.debit = cash_;
    new.credit = sales_;
    new.amount = [NSNumber numberWithFloat:100];
    new.date = [NSDate new];
    
    STAssertTrue([DataStore save], @"正常保存");
    STAssertEquals(cashCount + 1, [[cash_ debit_journals] count], @"借方勘定の仕訳数は1個増える");
    STAssertEquals(salesCount + 1, [[sales_ credit_journals] count], @"貸方勘定の仕訳数は1個増える");
}

@end
