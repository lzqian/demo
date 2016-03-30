//
//  Model.h
//  异步请求
//
//  Created by 赖智前 on 15/12/28.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property(nonatomic,strong)NSArray *statuses;

@property(nonatomic,strong)NSArray *advertises;

@property(nonatomic,strong)NSArray *ad;

@property(nonatomic,strong)NSNumber *hasvisible;

@property(nonatomic,strong)NSNumber *previous_cursor;

@property(nonatomic,strong)NSNumber *next_cursor;

@property(nonatomic,strong)NSNumber *total_number;

@property(nonatomic,strong)NSNumber *interval;

@property(nonatomic,strong)NSNumber *uve_blank;

@property(nonatomic,strong)NSNumber *since_id;

@property(nonatomic,strong)NSNumber *max_id;

@property(nonatomic,strong)NSNumber *has_unread;




-(id)initWithDictionary:(NSDictionary *)dictionary;
@end
