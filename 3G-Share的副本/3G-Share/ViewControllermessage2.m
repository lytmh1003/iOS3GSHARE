//
//  ViewControllermessage2.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/29.
//

#import "ViewControllermessage2.h"

@interface ViewControllermessage2 ()

@end

@implementation ViewControllermessage2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"消息设置";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
       NSString* s = @"strId";
        UITableViewCell*cell = [tableView cellForRowAtIndexPath:indexPath];
        if (cell == nil) {
            cell =  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
        }
       cell.textLabel.text = @"接受所有消息通知";
       // cell附加图样式
        UIButton* button = [[UIButton alloc] init];
        [button setImage:[UIImage imageNamed:@"xuanzhong-1.png"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"xuanzhong-2.png"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(310, 45, 40, 40);
        [self.tableView addSubview:button];
       return cell;
   } else if (indexPath.row == 1) {
       NSString* s = @"strId";
       UITableViewCell*cell = [tableView cellForRowAtIndexPath:indexPath];
        if (cell == nil) {
            cell =  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
        }
       cell.textLabel.text = @"通知显示栏";
       // cell附加图样式
        UIButton* button = [[UIButton alloc] init];
        [button setImage:[UIImage imageNamed:@"xuanzhong-1.png"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"xuanzhong-2.png"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(310, 100, 40, 40);
        [self.tableView addSubview:button];
       return cell;
   } else if (indexPath.row == 2) {
       NSString* s = @"strId";
       UITableViewCell*cell = [tableView cellForRowAtIndexPath:indexPath];
        if (cell == nil) {
            cell =  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
        }
       cell.textLabel.text = @"声音";
       // cell附加图样式
        UIButton* button = [[UIButton alloc] init];
        [button setImage:[UIImage imageNamed:@"xuanzhong-1.png"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"xuanzhong-2.png"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(310, 165, 40, 40);
        [self.tableView addSubview:button];
       return cell;
   } else if (indexPath.row == 3) {
       NSString* s = @"strId";
       UITableViewCell*cell = [tableView cellForRowAtIndexPath:indexPath];
        if (cell == nil) {
            cell =  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
        }
       cell.textLabel.text = @"震动";
       // cell附加图样式
        UIButton* button = [[UIButton alloc] init];
        [button setImage:[UIImage imageNamed:@"xuanzhong-1.png"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"xuanzhong-2.png"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(310, 225, 40, 40);
        [self.tableView addSubview:button];
       return cell;
   } else if (indexPath.row == 4) {
       NSString* s = @"strId";
       UITableViewCell*cell = [tableView cellForRowAtIndexPath:indexPath];
        if (cell == nil) {
            cell =  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
        }
       cell.textLabel.text = @"关注更新";
       // cell附加图样式
        UIButton* button = [[UIButton alloc] init];
        [button setImage:[UIImage imageNamed:@"xuanzhong-1.png"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"xuanzhong-2.png"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(310, 280, 40, 40);
        [self.tableView addSubview:button];
       return cell;
   }
    return 0;
}
- (void)pressButton:(UIButton*)button {
    button.selected = !button.selected;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; 
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
