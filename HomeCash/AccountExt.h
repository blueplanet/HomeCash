//
//  AccountExt.h
//  HomeCash
//
//  Created by Wakusei Aoi on 11/10/05.
//  Copyright 2011年 MySource. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

typedef enum {
    kAccountTypeAssets = 0,     // 資産
    kAccountTypeLiabilities,    // 負債
    kAccountTypeEquity,         // 資本(純資産)
    kAccountRevenue,            // 収益
    kAccountExpense             // 費用
} AccountType;

@interface Account (Ext)

@end
