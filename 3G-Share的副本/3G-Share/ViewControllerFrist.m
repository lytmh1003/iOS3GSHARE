//
//  ViewControllerFrist.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import "ViewControllerFrist.h"
#import "FristTableViewCell.h"
#import "SecondTableViewCell.h"
#import "ThirdTableViewCell.h"
#import "FourTableViewCell.h"
#import "FiveTableViewCell.h"
#import "FristViewControllerNext.h"


@interface ViewControllerFrist ()

@end

@implementation ViewControllerFrist

- (void)viewDidLoad {
//    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    [super viewDidLoad];
//    self.navigationController.navigationBar.translucent = NO;
//    self.navigationController.navigationBar.backgroundColor = newColor;
//    self.navigationController.navigationBar.tintColor = newColor; self.navigationController.navigationBar.backgroundColor = newColor;
    
    
    UIImage* image1 = [[UIImage imageNamed:@"shouye.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem* tabSet = [[UITabBarItem alloc] initWithTitle:@"主页" image:image1 tag:101];
    tabSet.imageInsets = UIEdgeInsetsMake(3, 20, 20, 20);
    self.tabBarItem = tabSet;
    self.title = @"3G_SHARE";
    
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[FristTableViewCell class] forCellReuseIdentifier:@"1"];
    [_tableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [_tableView registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"3"];
    [_tableView registerClass:[FourTableViewCell class] forCellReuseIdentifier:@"4"];
    [_tableView registerClass:[FiveTableViewCell class] forCellReuseIdentifier:@"5"];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 200;
    } else
        return 160;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        FristTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"1"];
        cell.accessoryType = UITableViewCellAccessoryNone;
        return cell;
    } else if (indexPath.section == 1) {
        SecondTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"2"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }  else if (indexPath.section == 2) {
        ThirdTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"3"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }  else if (indexPath.section == 3) {
        FourTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"4"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }  else if (indexPath.section == 4) {
        FiveTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"5"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        _cellSecond = [self.tableView cellForRowAtIndexPath:indexPath];
        FristViewControllerNext* ViewNext  = [[FristViewControllerNext alloc] init];
        ViewNext.xinnum = _cellSecond.num1;
        ViewNext.fenxiangnum = _cellSecond.num2;
        ViewNext.delegate = self;
        [self.navigationController pushViewController:ViewNext animated:YES];
    }
}
- (void)good:(int)zan :(int)fenxiang {
    if (zan == 300) {
        NSString *strZan = [NSString stringWithFormat:@"%d", zan];
        _cellSecond.num1  = zan;
        _cellSecond.labelFive.text = strZan;
    } else {
        NSString *strZan = [NSString stringWithFormat:@"%d", zan];
        _cellSecond.num1 = zan;
        _cellSecond.labelFive.text = strZan;
        _cellSecond.buttonOne.tag = 1;
        [_cellSecond.buttonOne setImage:[UIImage imageNamed:@"good.png"] forState:UIControlStateNormal];
    }
    NSString* strShare = [NSString stringWithFormat:@"%d", fenxiang];
    _cellSecond.num2 = fenxiang;
    _cellSecond.labelSeven.text = strShare;
    
}
//- (void)
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
