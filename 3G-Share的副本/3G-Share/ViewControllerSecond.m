//
//  ViewControllerSecond.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import "ViewControllerSecond.h"
#import "SixTableViewCell.h"
#import "SevenTableViewCell.h"
#import "EightTableViewCell.h"
#import "ViewControllerBig.h"
#import "ViewControllerDownLoad.h"
@interface ViewControllerSecond ()

@end

@implementation ViewControllerSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 芬兰控制器
    UIImage* image1 = [[UIImage imageNamed:@"sousuoleimu.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem* tabSet = [[UITabBarItem alloc] initWithTitle:@"搜一搜" image:image1 tag:101];
    tabSet.imageInsets = UIEdgeInsetsMake(3, 20, 20, 20);
    self.tabBarItem = tabSet;
    self.title = @"搜索";
    
    // 右上角上传
    UIBarButtonItem* buttonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yunshangchuan.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressYun)];
    buttonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = buttonItem;
    
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[SixTableViewCell class] forCellReuseIdentifier:@"6"];
    [_tableView registerClass:[SevenTableViewCell class] forCellReuseIdentifier:@"7"];
    [_tableView registerClass:[EightTableViewCell class] forCellReuseIdentifier:@"8"];
    _textFieldUserName = [[UITextField alloc] init];
    _textFieldUserName.placeholder = @"搜索 用户名 作品分类 文章";
    _textFieldUserName.borderStyle = UITextBorderStyleRoundedRect;
    _textFieldUserName.keyboardType = UIKeyboardTypeURL;
    _textFieldUserName.delegate = self;
    // 输入框的图片
    UIImageView* imageViewleftUerName = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sousuo.png"]];
    _textFieldUserName.leftView = imageViewleftUerName;
    // 设置左边的view永远显示
    _textFieldUserName.leftViewMode = UITextFieldViewModeAlways;
    _textFieldUserName.frame = CGRectMake(0, 100, 500, 40);
    
    _buttonSearch = [[UIButton alloc] init];
    [_buttonSearch setTitle:@"搜索" forState:UIControlStateNormal];
    [_buttonSearch setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _buttonSearch.titleLabel.font = [UIFont systemFontOfSize:17];
    _buttonSearch.frame = CGRectMake(370, 100, 60, 30);
    [_buttonSearch addTarget:self action:@selector(pressSearch) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_textFieldUserName];
    [self.view addSubview:_buttonSearch];
}
- (void)pressYun {
    ViewControllerDownLoad* viewDown = [[ViewControllerDownLoad alloc] init];
    [self.navigationController pushViewController:viewDown animated:YES];
}
- (void)pressSearch {
    NSString* str = @"NBA";
    if ([_textFieldUserName.text isEqualToString:str]) {
        ViewControllerBig* viewBig = [[ViewControllerBig alloc] init];
        viewBig.textFieldUserName.text = str;
        [self.navigationController pushViewController:viewBig animated:YES];
    } else {
        UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"暂无该分享。试试其他的！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [_alert addAction:sure];
        [self presentViewController:_alert animated:YES completion:nil];
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 210;
    } else
        return 140;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        SixTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"6"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    } else if (indexPath.section == 1) {
        SevenTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"7"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    } else if (indexPath.section == 2) {
        EightTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"8"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }
//    else if (indexPath.section == 3) {
//        FourTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"4"];
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//        return cell;
//    }  else if (indexPath.section == 4) {
//        FiveTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"5"];
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//        return cell;
//    }
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
        return 5;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
