//
//  appInfo.h
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/16/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface appInfo : NSObject

{
    NSString *developerInfo;
}
-(id)initWithName:(NSString*)name;
@property (nonatomic,strong) NSString *developerInfo;
@end
