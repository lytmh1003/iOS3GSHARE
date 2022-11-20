//
//  ViewControllerFive.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import "ViewControllerFive.h"
#import "TableViewCellMySelf.h"
#import "ViewControllerShangchuan.h"
#import "ViewControllertext.h"
#import "ViewControllerSet.h"

@interface ViewControllerFive ()

@end

@implementation ViewControllerFive

- (void)viewDidLoad {
    viewtext = [[ViewControllertext alloc] init];
    viewSet = [[ViewControllerSet alloc] init];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 芬兰控制器
    UIImage* image1 = [[UIImage imageNamed:@"wode.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem* tabSet = [[UITabBarItem alloc] initWithTitle:@"我的" image:image1 tag:101];
    tabSet.imageInsets = UIEdgeInsetsMake(3, 20, 20, 20);
    self.tabBarItem = tabSet;
    self.title = @"关于我的";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[TableViewCellMySelf class] forCellReuseIdentifier:@"12"];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else if (section == 1) {
        return 6;
    }
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 180;
    } else if (indexPath.section == 1){
        return 50;
    }
    return 0;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        TableViewCellMySelf* cell = [self.tableView dequeueReusableCellWithIdentifier:@"12"];
        cell.accessoryType = UITableViewCellAccessoryNone;
        return cell;
    }
    else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
           NSString* s = @"strId";
           UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
           cell.textLabel.text = @"我上传的";
           // cell附加图样式
           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           cell.selectionStyle = UITableViewCellSelectionStyleDefault;
           cell.imageView.image = [UIImage imageNamed:@"yunshangchuan1.png"];
           // 设置tableViewcell----图片大小的方法
           CGSize itemSize = CGSizeMake(30, 30);
                 UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
                 CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
                 [cell.imageView.image drawInRect:imageRect];
                 cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
           return cell;
       }
        else if (indexPath.row == 1) {
           NSString* s = @"strId";
           UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
           cell.textLabel.text = @"我的信息";
           // cell附加图样式
           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           cell.selectionStyle = UITableViewCellSelectionStyleDefault;
           cell.imageView.image = [UIImage imageNamed:@"xinxi.png"];
           // 设置tableViewcell----图片大小的方法
           CGSize itemSize = CGSizeMake(30, 30);
                 UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
                 CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
                 [cell.imageView.image drawInRect:imageRect];
                 cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
           return cell;
       }
            else if (indexPath.row == 2) {
           NSString* s = @"strId";
           UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
           cell.textLabel.text = @"我推荐的";
           // cell附加图样式
           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           cell.selectionStyle = UITableViewCellSelectionStyleDefault;
           cell.imageView.image = [UIImage imageNamed:@"xiai.png"];
           // 设置tableViewcell----图片大小的方法
           CGSize itemSize = CGSizeMake(30, 30);
                 UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
                 CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
                 [cell.imageView.image drawInRect:imageRect];
                 cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
           return cell;
       }
        else if (indexPath.row == 3) {
           NSString* s = @"strId";
           UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
           cell.textLabel.text = @"院系通知";
           // cell附加图样式
           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           cell.selectionStyle = UITableViewCellSelectionStyleDefault;
           cell.imageView.image = [UIImage imageNamed:@"xuesheng.png"];
           // 设置tableViewcell----图片大小的方法
           CGSize itemSize = CGSizeMake(30, 30);
                 UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
                 CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
                 [cell.imageView.image drawInRect:imageRect];
                 cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
           return cell;
       }
        else if (indexPath.row == 4){
           NSString* s = @"strId";
           UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
           cell.textLabel.text = @"设置";
           // cell附加图样式
           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           cell.selectionStyle = UITableViewCellSelectionStyleDefault;
           cell.imageView.image = [UIImage imageNamed:@"shezhi.png"];
           // 设置tableViewcell----图片大小的方法
           CGSize itemSize = CGSizeMake(30, 30);
                 UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
                 CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
                 [cell.imageView.image drawInRect:imageRect];
                 cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
                 UIGraphicsEndImageContext();
            return cell;
       }
        else if (indexPath.row == 5) {
           NSString* s = @"strId";
           UITableViewCell* cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
           cell.textLabel.text = @"退出";
           // cell附加图样式
           cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           cell.selectionStyle = UITableViewCellSelectionStyleDefault;
           cell.imageView.image = [UIImage imageNamed:@"tuichu.png"];
           // 设置tableViewcell----图片大小的方法
           CGSize itemSize = CGSizeMake(30, 30);
             UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
             CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
             [cell.imageView.image drawInRect:imageRect];
             cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
             UIGraphicsEndImageContext();
           return cell;
       }
    }
    return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // 不加此句时，在二级栏目点击返回时，此行会由选中状态慢慢变成非选中状态。
    // 加上此句，返回时直接就是非选中状态。
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            ViewControllerShangchuan* view1 = [[ViewControllerShangchuan alloc] init];
            [self.navigationController pushViewController:view1 animated:YES];
        } else if (indexPath.row == 1) {
            [self.navigationController pushViewController:viewtext animated:YES];
        } else if (indexPath.row == 3) {
            UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"暂无通知" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
            [_alert addAction:sure];
            [self presentViewController:_alert animated:YES completion:nil];
        } else if (indexPath.row == 4) {
            [self.navigationController pushViewController:viewSet animated:YES];
        } else if (indexPath.row == 5) {
            UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"需求被驳回！" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
            [_alert addAction:sure];
            [self presentViewController:_alert animated:YES completion:nil];
        }
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
