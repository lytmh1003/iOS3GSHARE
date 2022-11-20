//
//  ViewControllertext.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import "ViewControllertext.h"
#import "ViewControllerFive.h"
#import "ViewControllerGuanzhu.h"
#import "ViewControllermessage.h"
@interface ViewControllertext ()

@end
@implementation ViewControllertext

- (void)viewDidLoad {
    [super viewDidLoad];
    View = [[ViewControllerGuanzhu alloc] init];
    // Do any additional setup after loading the view.
//    UIBarButtonItem* buttonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yunshangchuan.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressYun)];
//    buttonItem.tintColor = [UIColor whiteColor];
//    self.navigationItem.leftBarButtonItem = buttonItem;
    
    self.title = @"我的信息";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    if (indexPath.row == 0) {
       NSString* s = @"strId";
       UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
       cell.textLabel.text = @"评论";
       // cell附加图样式
       cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
       cell.selectionStyle = UITableViewCellSelectionStyleDefault;
        cell.detailTextLabel.text = @"7";
        cell.detailTextLabel.textColor = newColor;
        return cell;
    } else if (indexPath.row == 1) {
        NSString* s = @"strId";
        UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
        cell.textLabel.text = @"推荐我的";
        // cell附加图样式
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
        cell.detailTextLabel.text = @"7";
        cell.detailTextLabel.textColor = newColor;
         return cell;
     } else if (indexPath.row == 2) {
         NSString* s = @"strId";
         UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
         cell.textLabel.text = @"新关注的";
         // cell附加图样式
         cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
         cell.selectionStyle = UITableViewCellSelectionStyleDefault;
         cell.detailTextLabel.text = @"新粉丝-27";
         cell.detailTextLabel.textColor = newColor;
          return cell;
      } else if (indexPath.row == 3) {
          NSString* s = @"strId";
          UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
          cell.textLabel.text = @"私信";
          // cell附加图样式
          cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
          cell.selectionStyle = UITableViewCellSelectionStyleDefault;
          cell.detailTextLabel.text = @"有朋友找你-17";
          cell.detailTextLabel.textColor = newColor;
           return cell;
       } else if (indexPath.row == 4) {
           NSString* s = @"strId";
           UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
           cell.textLabel.text = @"活动通知";
           // cell附加图样式
           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           cell.selectionStyle = UITableViewCellSelectionStyleDefault;
           cell.detailTextLabel.text = @"7";
           cell.detailTextLabel.textColor = newColor;
            return cell;
        }
    return 0;
}
- (void) pressYun {
    ViewControllerFive* five = [[ViewControllerFive alloc] init];
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController pushViewController:five animated:NO];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 2) {
        [self. navigationController pushViewController:View animated:YES];
    } else if (indexPath.row == 3) {
        ViewControllermessage* view2 = [[ViewControllermessage alloc]init ];
        [self.navigationController pushViewController:view2 animated:YES];
    }
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
