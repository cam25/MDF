//
//  weatherData.h
//  Week4App
//
//  Created by Cameron Mozie on 4/30/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface weatherData : NSObject
{
    NSString *text;
    NSString *temp;
    NSString *date;
}
-(id)initwithName2:(NSString*)text temp:(NSString*)temp date:(NSString*)date;
@end
