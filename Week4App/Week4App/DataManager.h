//
//  DataManager.h
//  Week4App
//
//  Created by Cameron Mozie on 4/29/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    NSMutableArray *myArray;
}
@property NSMutableArray *myArray;


+(DataManager*)sharedDataManager;
@end
