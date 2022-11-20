//
//  ViewControllerSet.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import "ViewControllerFive.h"
#import "ViewControllerSet.h"
#import "ViewController inforMation.h"
#import "ViewControllerPassWord.h"
#import "ViewControllermessage2.h"
#import "AlertViewController.h"
@interface ViewControllerSet ()

@end

@implementation ViewControllerSet

- (void)viewDidLoad {
    _View = [[ViewController_inforMation alloc] init];
    _ViewMessage = [[ViewControllermessage2 alloc]init];
//    _View = [[ViewController_inforMation alloc] init];
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"iconfanhui1.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressLeft)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
    
    self.title = @"设置";
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
    // Do any additional setup after loading the view.
- (void) pressYun {
    ViewControllerFive* five = [[ViewControllerFive alloc] init];
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController pushViewController:five animated:NO];
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
       NSString* s = @"strId";
       UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
       cell.textLabel.text = @"基本资料";
       // cell附加图样式
       cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
       cell.selectionStyle = UITableViewCellSelectionStyleDefault;
        return cell;
    } else if (indexPath.row == 1) {
        NSString* s = @"strId";
        UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
        cell.textLabel.text = @"修改密码";
        // cell附加图样式
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
         return cell;
     } else if (indexPath.row == 2) {
         NSString* s = @"strId";
         UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
         cell.textLabel.text = @"消息设置";
         // cell附加图样式
         cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
         cell.selectionStyle = UITableViewCellSelectionStyleDefault;
          return cell;
      } else if (indexPath.row == 3) {
          NSString* s = @"strId";
          UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
          cell.textLabel.text = @"关于Share";
          // cell附加图样式
          cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
          cell.selectionStyle = UITableViewCellSelectionStyleDefault;
           return cell;
       } else if (indexPath.row == 4) {
           NSString* s = @"strId";
           UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:s];
           cell.textLabel.text = @"清除缓存";
           // cell附加图样式
           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           cell.selectionStyle = UITableViewCellSelectionStyleDefault;
            return cell;
        }
    return 0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:_View animated:YES];
    } else if (indexPath.row == 1) {
        ViewControllerPassWord* viewPassWord = [[ViewControllerPassWord alloc] init];
        [self.navigationController pushViewController:viewPassWord animated:YES];
    } else if (indexPath.row == 2) {
        [self.navigationController pushViewController:_ViewMessage animated:YES];
    } else if (indexPath.row == 3) {
        UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"关于不了Share！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [_alert addAction:sure];
        [self presentViewController:_alert animated:YES completion:nil];
    } else {
        alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"缓存已清除！" preferredStyle:UIAlertControllerStyleAlert];
        NSTimer* myTimer = [NSTimer scheduledTimerWithTimeInterval:2   target:self selector:@selector(timeOut) userInfo:nil repeats:NO];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
- (void)timeOut {
    [alert dismissViewControllerAnimated:YES completion:nil];
}
- (void)pressLeft {
    [self.navigationController popViewControllerAnimated:YES];
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
