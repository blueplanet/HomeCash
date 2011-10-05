//
//  JournalTest.h
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/05.
//  Copyright 2011年 MySource. All rights reserved.
//

#define USE_APPLICATION_UNIT_TEST 1

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>

#import "DataStore.h"

@interface JournalTest : SenTestCase {
@private
    Account *cash_;
    Account *bank_;
    Account *visa_;
    Account *sales_;
}

@end
