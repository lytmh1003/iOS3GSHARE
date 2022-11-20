//
//  ViewControllerBig.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/27.
//

#import "ViewControllerBig.h"
#import "TableViewCellBig.h"
#import "TableViewCellBig2.h"

@interface ViewControllerBig ()

@end

@implementation ViewControllerBig

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    self.title = @"搜索详情";

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"iconfanhui1.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressLeft)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[TableViewCellBig class] forCellReuseIdentifier:@"9"];
    [_tableView registerClass:[TableViewCellBig2 class] forCellReuseIdentifier:@"10"];
    
    _textFieldUserName = [[UITextField alloc] init];
    _textFieldUserName.text = @"Dabai";
    _textFieldUserName.borderStyle = UITextBorderStyleRoundedRect;
    _textFieldUserName.keyboardType = UIKeyboardTypeURL;
    _textFieldUserName.delegate = self;
    // 输入框的图片
    UIImageView* imageViewleftUerName = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sousuo.png"]];
    _textFieldUserName.leftView = imageViewleftUerName;
    // 设置左边的view永远显示
    _textFieldUserName.leftViewMode = UITextFieldViewModeAlways;
    _textFieldUserName.frame = CGRectMake(0, 100, 500, 40);
    [self.view addSubview:_textFieldUserName];
    
}
- (void)pressLeft {
    [self.navigationController popViewControllerAnimated:YES];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        TableViewCellBig* cell = [self.tableView dequeueReusableCellWithIdentifier:@"9"];
        cell.accessoryType = UITableViewCellAccessoryNone;
        return cell;
    } else {
        TableViewCellBig2* cell = [self.tableView dequeueReusableCellWithIdentifier:@"10"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
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
