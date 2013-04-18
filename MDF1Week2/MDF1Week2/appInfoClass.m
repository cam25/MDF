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
@synthesize devDate,devTerm,devSchool,devName,devCourse;



-(id)initWithDetails:(NSString*)name date:(NSString*)Date school:(NSString*)School term:(NSString*)term course:(NSString*)course;

{
    self = [super init];
    if (self !=nil)
    {
       //setters
        devName = name;
        devDate = Date;
        devSchool = School;
        devTerm = term;
        devCourse = course;
        
       
    }
    return self;
};



@end
