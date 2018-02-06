//
//  PrefixHeader.h
//  AoTai
//
//  Created by 驭能者 on 2018/2/6.
//  Copyright © 2018年 驭能者. All rights reserved.
//

#ifndef PrefixHeader_h
#define PrefixHeader_h

ifndef __OPTIMIZE__
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...){}
#endif

#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__);
#define DeviceToken "http://test.yunengzhe.com:846/longieb/umengPush/binding"
#else
#define DeviceToken "http://221.11.8.54:8180/longieb/umengPush/binding"
#define NSLog(...)
#endif


#endif /* PrefixHeader_h */
