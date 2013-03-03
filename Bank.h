//
//  Bank.h
//  DelgatesExample
//
//  Created by Chad Jones on 1/30/13.
//  Copyright (c) 2013 CollegeMobile, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@protocol BankDelegate <NSObject>

@optional
   -(void)notificationOfDepositMoneyAvailable;

@required
   -(void)youAreRich;

@end


@interface Bank : NSObject

   -(void)makeDeposit:(float)amount customer:(Person*)mycustomer;

   +(Bank*)sharedBank;

@end








