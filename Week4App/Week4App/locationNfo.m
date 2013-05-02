//
//  locationNfo.m
//  Week4App
//
//  Created by Cameron Mozie on 4/29/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "locationNfo.h"


@implementation locationNfo
@synthesize city,country,state,urlz,text,date,code,temp;

-(id)initWithName:(NSString *)locationCity locationState:(NSString *)locationState country:(NSString *)locationCountry urlz:(NSString *)API
{
    if ((self = [super init])) {
        
        //setters
        city = locationCity;
        state = locationState;
        country = locationCountry;
        urlz = API;
       
        temp = locationCity;
        text = locationState;
        date = locationCountry;
    
        
       
    }
    return self;
}


/*
-(id)initWithName2:(NSString *)url
{
    if ((self = [super init])) {
        
        urlz = [[NSMutableArray alloc]init];
    }
    return self;
}
*/

@end
