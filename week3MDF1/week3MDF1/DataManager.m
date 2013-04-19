//
//  DataManager.m
//  week3MDF1
//
//  Created by Cameron Mozie on 4/19/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager
@synthesize businesses;
static DataManager* _sharedDataManager = nil;

+(DataManager*)sharedDataManager
{
    if (!_sharedDataManager) {
        _sharedDataManager = [[self alloc]init];
        
    }
    return _sharedDataManager;
}

-(id) init
{
    if ((self = [super init])) {
         businesses = [[NSMutableArray alloc]init];
    }
    return self;
}

@end
