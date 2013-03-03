//
//  Person.h
//  DelgatesExample
//
//  Created by Chad Jones on 1/30/13.
//  Copyright (c) 2013 CollegeMobile, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Bank.h"

@interface Person : NSObject <BankDelegate>

-(void)notificationOfDepositMoneyAvailable;
-(void)youAreRich;

@end
