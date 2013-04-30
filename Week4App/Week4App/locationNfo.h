//
//  locationNfo.h
//  Week4App
//
//  Created by Cameron Mozie on 4/29/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface locationNfo : NSObject
{
    NSString *city;
    NSString *state;
    NSString *country;

    
    
}
-(id)initWithName:(NSString*)locationCity locationState:(NSString*)locationState country:(NSString*)locationCountry;
//-(id)initwithName2:(NSString*)text temp:(NSString*)temp date:(NSString*)date;
@end
