//
//  ViewControllermessage.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import "ViewControllermessage.h"
#import "ViewControllertext.h"

@interface ViewControllermessage ()

@end

@implementation ViewControllermessage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的私信";
    UIBarButtonItem* buttonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yunshangchuan.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressYun)];
    buttonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = buttonItem;
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
    return 2;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        NSString* str = @"1";
        UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
        cell.textLabel.text = @"a孟好";
        cell.textLabel.textColor = [UIColor blackColor];
        cell.imageView.image = [UIImage imageNamed:@"list_img1.png"];
        cell.detailTextLabel.text = @"吃饭了没";
        cell.detailTextLabel.textColor = [UIColor grayColor];
        UILabel* label = [[UILabel alloc] init];
        label.text = @"20:19";
        label.frame = CGRectMake(310, 70, 100, 20);
        label.textColor = [UIColor grayColor];
        [self.tableView addSubview:label];
        // 设置tableViewcell----图片大小的方法
        CGSize itemSize = CGSizeMake(50, 50);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return cell;
    } else if (indexPath.row == 1) {
        NSString* str = @"1";
        UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
        cell.textLabel.text = @"a高组";
        cell.textLabel.textColor = [UIColor blackColor];
        cell.imageView.image = [UIImage imageNamed:@"main_img3.png"];
        cell.detailTextLabel.text = @"罚你100到算法题";
        cell.detailTextLabel.textColor = [UIColor grayColor];
        UILabel* label = [[UILabel alloc] init];
        label.text = @"20:49";
        label.frame = CGRectMake(310, 140, 100, 20);
        label.textColor = [UIColor grayColor];
        [self.tableView addSubview:label];
        // 设置tableViewcell----图片大小的方法
        CGSize itemSize = CGSizeMake(50, 50);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return cell;
    }
    return 0;
}
- (void) pressYun {
    ViewControllertext* five = [[ViewControllertext alloc] init];
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController pushViewController:five animated:NO];
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
