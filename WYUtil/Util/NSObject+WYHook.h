//
//  NSObject+WYHook.h
//  WYUtil
//
//  Created by 蓝秀文 on 2018/2/11.
//  Copyright © 2018年 蓝秀文. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (WYHook)
+(void) replaceSelector:(SEL)selector bySelector:(SEL) newSelector;
@end
