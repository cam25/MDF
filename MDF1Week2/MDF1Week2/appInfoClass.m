//
//  appInfoClass.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/16/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "appInfoClass.h"
#import "ThirdChildViewController.h"
@implementation appInfoClass
@synthesize devDate,devTerm,devSchool,devName;



-(id)initWithDetails:(NSString*)name date:(NSString*)Date school:(NSString*)School term:(NSString*)term;

{
    self = [super init];
    if (self !=nil)
    {
       
        devName = name;
        devDate = Date;
        devSchool = School;
        devTerm = term;
        
       
    }
    return self;
};

-(void)showInfo{
    
 
    
   
}

@end
