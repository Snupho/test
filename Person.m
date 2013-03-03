//
//  Person.m
//  DelgatesExample
//
//  Created by Chad Jones on 1/30/13.
//  Copyright (c) 2013 CollegeMobile, Inc. All rights reserved.
//


#import "Person.h"


@implementation Person

-(void)goToBankAndMakeDeposit:(float)amount
   {
   Bank* mybank = [ Bank sharedBank ];
   
   [ mybank makeDeposit: amount customer: self ];
   }


-(void)youAreRich
   {
   NSLog( @"Yay!" );
   }

-(void)notificationOfDepositMoneyAvailable
   {
   }







@end
