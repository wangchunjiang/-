//
//  Networking.m
//  Bodhi outpatient
//
//  Created by wcj on 16/3/4.
//  Copyright © 2016年 bodhi hospital management. All rights reserved.
//

#import "Networking.h"

@implementation Networking


+ (void)getWithURLString:(NSString *)URLString
              parameters:(id)parameters
                 success:(void (^)(id responseObject))success
                 failure:(void (^)(NSError *error))failure

{
    AFHTTPSessionManager * manager = [AFHTTPSessionManager  manager];
   // manager.requestSerializer = [AFJSONRequestSerializer serializer];
  manager.responseSerializer = [AFHTTPResponseSerializer serializer];
   
    
    
    [manager  GET:URLString parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        
        
        
//        
//        if (success) {
//            
//            
//            success( responseObject);
// 
//        }
        
        
        if (success) {
            
            NSString *str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            success(str);
            
        }
        
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        
        failure(error);
        
        
    }];
    
    
}

+ (void)postWithURLString:(NSString *)URLString
               parameters:(id)parameters
                  success:(void (^)(id))success
                  failure:(void (^)(NSError *))failure

{
    AFHTTPSessionManager * manager = [AFHTTPSessionManager  manager];
    
    
    manager.requestSerializer = [[AFJSONRequestSerializer alloc]init];
    
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager  POST:URLString parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        
        
        {
            
            
            
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
    
    
    
    
    
}
@end
