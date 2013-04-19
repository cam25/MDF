//
//  BusinessNfo.m
//  week3MDF1
//
//  Created by Cameron Mozie on 4/19/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "BusinessNfo.h"

@implementation BusinessNfo

@synthesize locationName,actualLocation;

    -(id)initWithTitle:(NSString*)name loc:(CLLocationCoordinate2D)loc
    {
    
        if ((self = [super init])) {
            
            //setter
            locationName = name;
            actualLocation = loc;
        }
        return self;
    }

@end
