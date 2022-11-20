//
//  ViewControllerFour.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import "ViewControllerFour.h"
#import "TableViewCellHuodong.h"

@interface ViewControllerFour ()

@end

@implementation ViewControllerFour

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 芬兰控制器
    UIImage* image1 = [[UIImage imageNamed:@"gengduo.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem* tabSet = [[UITabBarItem alloc] initWithTitle:@"更多" image:image1 tag:101];
    tabSet.imageInsets = UIEdgeInsetsMake(3, 20, 20, 20);
    self.tabBarItem = tabSet;
    self.title = @"活动";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[TableViewCellHuodong class] forCellReuseIdentifier:@"12"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCellHuodong* cell = [self.tableView dequeueReusableCellWithIdentifier:@"12"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
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
