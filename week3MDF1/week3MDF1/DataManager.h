//
//  DataManager.h
//  week3MDF1
//
//  Created by Cameron Mozie on 4/19/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    NSMutableArray *businesses;
}
+(DataManager*)sharedDataManager;
@property (nonatomic,strong)NSMutableArray *businesses;
@end
