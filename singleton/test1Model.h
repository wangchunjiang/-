//
//  test1Model.h
//  singleton
//
//  Created by wcj on 16/6/30.
//  Copyright © 2016年 bodhi. All rights reserved.
//

#import <JSONModel/JSONModel.h>
@protocol DataImageMOdel
@end
@interface DataImageMOdel : JSONModel
@property(nonatomic,strong)NSString * imageUrl;

@property(nonatomic,strong)NSString *status;

@property(nonatomic,strong)NSString * isOpen;

@property(nonatomic,strong)NSString * linkUrl;

@end
@interface test1Model : JSONModel
@property(nonatomic,strong)DataImageMOdel *  data;
@property(nonatomic,strong)NSString * msg;
@property(nonatomic,strong)NSString * code;

@end
