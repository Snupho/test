//
//  Bank.m
//  DelgatesExample
//
//  Created by Chad Jones on 1/30/13.
//  Copyright (c) 2013 CollegeMobile, Inc. All rights reserved.
//

#import "Bank.h"

#import "Person.h"

@interface Bank ()

@property float bankBalance;
@property ( strong ) NSString* bankName;

@end



@implementation Bank

-(id)initWithPerson:(Person*)personToUse
   {
   self = [ super init ];
   
   if ( self != nil )
      {
      self.bankBalance = 0;
      }
      
   return( self );
   }



-(void)makeDeposit:(float)amount customer:(Person*)mycustomer
   {
   self.bankBalance = self.bankBalance + amount;
   
   if ( [ mycustomer respondsToSelector: @selector(notificationOfDepositMoneyAvailable )])
      {
      [ mycustomer notificationOfDepositMoneyAvailable ];
      }
      
   if ( self.bankBalance > 100000 )
      {
      [ mycustomer youAreRich ];
      }
   }



+(Bank*)sharedBank
   {
   static Bank* sharedBank = nil;
   
   if ( sharedBank == nil )
      {
      sharedBank = [ Bank new ];
      }
   
   return( sharedBank );
   }

@end











