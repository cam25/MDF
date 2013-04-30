//
//  locationNfo.m
//  Week4App
//
//  Created by Cameron Mozie on 4/29/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "locationNfo.h"

@implementation locationNfo
-(id)initWithName:(NSString*)locationCity locationState:(NSString*)locationState country:(NSString *)locationCountry
{
    if ((self = [super init])) {
        city = locationCity;
        state = locationState;
        country = locationCountry;
    }
    return self;
}



@end
