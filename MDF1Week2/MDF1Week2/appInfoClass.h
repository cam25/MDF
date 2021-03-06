//
//  appInfoClass.h
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/16/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
@class  appInfoClass;
@interface appInfoClass : NSObject
{
    NSString *devName;
    NSString *devDate;
    NSString *devSchool;
    NSString *devTerm;
    NSString *devCourse;
    NSMutableArray *details;
}


//method for passing data to view from array
-(id)initWithDetails:(NSString *)name date:(NSString*)date school:(NSString*)School term:(NSString*)Term course:(NSString*)course;

//properties for NSobject 
@property (nonatomic, readonly)NSString *devName;
@property (nonatomic, readonly)NSString *devDate;
@property (nonatomic, readonly)NSString *devSchool;
@property (nonatomic, readonly)NSString *devTerm;
@property (nonatomic, readonly)NSString *devCourse;
@end
