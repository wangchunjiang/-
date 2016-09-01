//
//  TestModel.h
//  singleton
//
//  Created by wcj on 16/3/17.
//  Copyright © 2016年 bodhi. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol activitiesModel
@end
@interface activitiesModel : JSONModel
@property(nonatomic,copy)NSString <Optional>* pic_url;
@property(nonatomic,copy)NSString <Optional>* share_message;
@property(nonatomic,copy)NSString <Optional>* share_title;
@property(nonatomic,copy)NSString <Optional>* short_title;

@end

@interface DataMOdel : JSONModel
@property(nonatomic,strong)NSArray <activitiesModel>* activities;

@property(nonatomic,assign)int next_cursor;

@property(nonatomic,assign)int previous_cursor;



@end

@interface TestModel : JSONModel
@property(nonatomic,strong)DataMOdel * data;
@property(nonatomic,copy)NSString * msg ;
@property(nonatomic,assign)int ret ;


@end
