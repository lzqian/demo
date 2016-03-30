//
//  Model.m
//  异步请求
//
//  Created by 赖智前 on 15/12/28.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Model.h"

@implementation Model
-(id)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;
}
@end
