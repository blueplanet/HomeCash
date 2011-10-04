//
//  Account.h
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/03.
//  Copyright (c) 2011年 MySource. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Account : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * balance;

@end
