//
//  Journal.h
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/05.
//  Copyright (c) 2011年 MySource. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Account;

@interface Journal : NSManagedObject {
@private
}
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) NSString * memo;
@property (nonatomic, retain) Account *debit;
@property (nonatomic, retain) Account *credit;

@end
