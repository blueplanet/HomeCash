//
//  NSManagedObjectExt.h
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/04.
//  Copyright 2011年 MySource. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface NSManagedObject (Entity)

+ (NSString *)entityName;

@end
