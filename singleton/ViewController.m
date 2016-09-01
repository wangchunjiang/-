//
//  ViewController.m
//  singleton
//
//  Created by wcj on 16/3/16.
//  Copyright © 2016年 bodhi. All rights reserved.
//

#import "ViewController.h"
#import "Networking.h"
#import "TestModel.h"
#import "AFNetworking.h"
#import "test1Model.h"
@interface ViewController ()
@property(nonatomic,strong) activitiesModel * acModel;


@property(nonatomic,strong)NSMutableArray * modelArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.modelArray  =[ NSMutableArray array];

    UIButton * btn =[UIButton buttonWithType:UIButtonTypeSystem];
    
    btn.frame = CGRectMake(10, 100, 100, 40);
    
    [btn  setTitle:@"点击测试" forState:UIControlStateNormal];
    
    [btn setTintColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnclick ) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    
}
-(void)btnclick

{
    NSLog(@"请求测试");
    
    //http://192.168.5.6:8086/Test.svc/Tasks/JSON
    //http://www.baidu.com
   
    
    NSString * str = @"http://app.goodluckchina.cn/apk/welcome.json";
    
    [Networking  getWithURLString:str parameters:nil success:^(id responseObject) {
        
       
        NSLog(@"%@",responseObject);
        
        
        
        test1Model * model = [[test1Model alloc]initWithString:responseObject error:nil];
        
        
        DataImageMOdel * model1 = model.data;
        
        
        
        
        NSLog(@"%@",model1.imageUrl);
        
    
        
        
        
    } failure:^(NSError *error) {
        
    }];
    
    
//    [Networking  getWithURLString:@"http://api.yuike.com/beautymall/api/1.0/activity/list.php?cursor=0&activity_category_ids=2&yk_cbv=2.8.4.2&yk_pid=1&count=40&yk_user_id=2061882&yk_appid=1&sid=6b94d8ee8b05caffc4b7c361c0f979f5&activity_types=1,2,3,4,5" parameters:nil success:^(id responseObject) {
//         
//     //   NSString * str = [[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding];
//        
//      
//        
//        TestModel *model = [[TestModel alloc] initWithString:responseObject error:nil];
//        
//        
//      //  NSLog(@"%@",model.data);
//        
//        for (int i = 0; i<model.data.activities.count; i++) {
//            _acModel = model.data.activities [i];
//            [self.modelArray addObject:_acModel];
//            
//            NSLog(@"  *******%@",self.modelArray);
//            
//        }
//        
//        
//        NSLog(@"    %@",self.acModel.short_title) ;
//        
//        
//        self.acModel = self.modelArray [0];
//        
//             
//         NSLog(@"%@",_acModel.short_title);
//        
//    } failure:^(NSError *error) {
//        
//        NSLog(@"%@",error);
//        
//    }];
    
    
    
  //  UILabel * la = [UILabel alloc]
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
