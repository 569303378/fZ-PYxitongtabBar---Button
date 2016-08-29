//
//  RootTabViewController.m
//  PYTabBarzidingyi
//
//  Created by Apple on 16/8/24.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "RootTabViewController.h"
#import "JPLinkSubview.h"
#import "JPNavigationController/JPNavigationControllerKit.h"
#import "TwoViewController.h"
@interface RootTabViewController () <JPLinkSubviewDelegate>
/** linkSubview */
@property(nonatomic, strong)JPLinkSubview *linkSubview;
@end

const CGFloat sec_linkSubviewH = 60;
#define JPScreenH [UIScreen mainScreen].bounds.size.height
#define JPScreenW [UIScreen mainScreen].bounds.size.width

@implementation RootTabViewController
-(JPLinkSubview *)linkSubview{
    if (!_linkSubview) {
        _linkSubview = [JPLinkSubview viewForXib];
        _linkSubview.frame = CGRectMake(0, 0, JPScreenW, sec_linkSubviewH);
        _linkSubview.jp_delegate = self;
    }
    return _linkSubview;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.navigationController.jp_linkContainerView addSubview:self.linkSubview];

}


#pragma mark JPLinkSubviewDelegate
#pragma mark 立即购买
-(void)linkSubview:(JPLinkSubview *)linkSubview didClickBuy:(UIButton *)sender{
    NSLog(@"立即购买");
}
#pragma mark 收藏
-(void)linkSubview:(JPLinkSubview *)linkSubview didClickClosePop:(UIButton *)sender{
//    TwoViewController *twoVC = [[TwoViewController alloc] init];
//    [self.navigationController pushViewController:twoVC animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
