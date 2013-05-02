//
//  DataManager.m
//  Week4App
//
//  Created by Cameron Mozie on 4/29/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

@synthesize myArray;


static DataManager* _sharedDataManager = nil;

+(DataManager*)sharedDataManager
{
    if (!_sharedDataManager)
    {
        _sharedDataManager = [[self alloc] init];
    }
    return _sharedDataManager;
}
-(id)init
{
    if ((self = [super init])) {
        myArray = [[NSMutableArray alloc]init];
    }
    return  self;
}
@end
