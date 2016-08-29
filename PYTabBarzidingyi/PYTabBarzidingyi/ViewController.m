//
//  ViewController.m
//  PYTabBarzidingyi
//
//  Created by Apple on 16/8/24.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "RootTabViewController.h"
#import "JPNavigationController/JPNavigationControllerKit.h"
@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *myTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   //第二部分:标签栏
    //改变的是选中状态是下面字体和小图标的颜色
//    self.tabBarController.tabBar.tintColor = [UIColor redColor];
     //设置分栏的背景图片
//    self.tabBarController.tabBar.backgroundImage = [UIImage imageNamed:@"1"];
    //标签栏的显示与隐藏
//    self.tabBarController.tabBar.hidden = YES;
   // 设置导航控制器默认显示的控制器（ 默认界面显示数组里面第一个 下表为0的控制器的界面）
//    self.tabBarController.selectedIndex = 1;//数组里面的第三个
    
    //第二部分:tabBarItem

    
    // 隐藏导航条
    self.navigationController.navigationBarHidden = YES;
    _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

    [self.view addSubview:_myTableView];
}
#pragma mark = tab
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    cell.textLabel.text = @"123";
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"1");
    RootTabViewController *rootVC = [[RootTabViewController alloc] init];
    rootVC.hidesBottomBarWhenPushed = YES;
    // 注意： 这两行代码有逻辑关系，必须先push过去，navigationController才会alloc，分配内存地址，才有值
    [self.navigationController pushViewController:rootVC animated:YES];
    rootVC.navigationController.jp_linkViewHeight = 60.0f;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
