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
    //strings for holding data to pass
    NSString *city;
    NSString *state;
    NSString *country;
    NSString *urlz;
    NSString *text;
    NSString *code;
    NSString *temp;
    NSString *date;
    


    
    
}

//properties
@property NSString *city;
@property NSString *state;
@property NSString *country;
@property NSString *urlz;
@property NSString *text;
@property NSString *code;
@property NSString *temp;
@property NSString *date;
-(id)initWithName:(NSString *)locationCity locationState:(NSString *)locationState country:(NSString *)locationCountry urlz:(NSString*)API;
//-(id)initWithName2:(NSString*)locationTemp locationText:(NSString *)locationText locationDate:(NSString *)locationDate locationCode:(NSString *)locationCode;
//-(id)initWithName2:(NSString*)url;
//-(id)initwithName2:(NSString*)text temp:(NSString*)temp date:(NSString*)date;
@end
