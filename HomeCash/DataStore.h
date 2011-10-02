//
//  DataStore.h
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/02.
//  Copyright 2011年 MySource. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#import "Account.h"

@interface DataStore : NSObject 

+ (NSManagedObjectContext *)sharedContext;
+ (BOOL)save;
@end
