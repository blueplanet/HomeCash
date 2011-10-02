//
//  AccountTest.m
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/03.
//  Copyright 2011年 MySource. All rights reserved.
//

#import "AccountTest.h"

@implementation AccountTest

- (void)testAddAccount {
    NSManagedObjectContext *moc = [DataStore sharedContext];
    Account *newAccount = [NSEntityDescription insertNewObjectForEntityForName:@"Account" inManagedObjectContext:moc];
    
    newAccount.name = @"現金";
    
    STAssertTrue([DataStore save], @"新規追加は正常");
}


@end
