//
//  NSObject+WYHook.m
//  WYUtil
//
//  Created by 蓝秀文 on 2018/2/11.
//  Copyright © 2018年 蓝秀文. All rights reserved.
//

#import "NSObject+WYHook.h"
#import <objc/runtime.h>

@implementation NSObject (WYHook)
+(void) replaceSelector:(SEL)selector bySelector:(SEL) newSelector{
    Class class = [self class];
    Method method = class_getInstanceMethod(class, selector);
    Method newMethod = class_getInstanceMethod(class, newSelector);
    //先尝试給源SEL添加IMP，这里是为了避免源SEL没有实现IMP的情况
    BOOL bAdd = class_addMethod(class,selector,method_getImplementation(newMethod),method_getTypeEncoding(newMethod));
    if (bAdd) {//添加成功则替换
        class_replaceMethod(class,newSelector,method_getImplementation(method),method_getTypeEncoding(method));
    } else {//添加失败则交换
        method_exchangeImplementations(method, newMethod);
    }
}
@end
