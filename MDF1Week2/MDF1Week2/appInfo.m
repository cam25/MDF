//
//  appInfo.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/16/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "appInfo.h"

@implementation appInfo

@synthesize developerInfo;

-(id)initWithName:(NSString *)name
{
    if ((self = [super init])) {
        developerInfo = name;
    }
    return self;
}

@end
