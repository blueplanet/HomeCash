//
//  DataStore.h
//  HomeCash
//
//  Created by wakusei aoi on 11/10/02.
//  Copyright 2011年 MySource. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface DataStore : NSObject 

+ (NSManagedObjectContext *)sharedContext;

@end
