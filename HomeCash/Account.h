//
//  Account.h
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/05.
//  Copyright (c) 2011年 MySource. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Journal;

@interface Account : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSSet *debit_journals;
@property (nonatomic, retain) NSSet *credit_journals;
@end

@interface Account (CoreDataGeneratedAccessors)

- (void)addDebit_journalsObject:(Journal *)value;
- (void)removeDebit_journalsObject:(Journal *)value;
- (void)addDebit_journals:(NSSet *)values;
- (void)removeDebit_journals:(NSSet *)values;

- (void)addCredit_journalsObject:(Journal *)value;
- (void)removeCredit_journalsObject:(Journal *)value;
- (void)addCredit_journals:(NSSet *)values;
- (void)removeCredit_journals:(NSSet *)values;

@end
