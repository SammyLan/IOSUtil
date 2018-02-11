//
//  AppDelegate.h
//  iOSUtil
//
//  Created by 蓝秀文 on 2018/2/11.
//  Copyright © 2018年 蓝秀文. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

