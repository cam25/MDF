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

@synthesize Name,date,term,School,details;
static appInfoClass *_sharedAppInfoClass = nil;

+(appInfoClass*)sharedAppInfoClass
{
    if(!_sharedAppInfoClass){
        _sharedAppInfoClass = [[self alloc] init];
    }
    return _sharedAppInfoClass;
}

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setName:@"Cameron Mozie"];
        [self setDate:@"04/16/2012"];
        [self setTerm:@"1304"];
        [self setSchool:@"Full Sail University"];
        
        [details addObject:Name];
        [details addObject:date];
        [details addObject:term];
        [details addObject:School];
    }
    return self;
};

-(void)showInfo{
    
     NSLog(@"%@",self.details);
    
   
}

@end
