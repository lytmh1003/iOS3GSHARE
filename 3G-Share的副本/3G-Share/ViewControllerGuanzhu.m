//
//  ViewControllerGuanzhu.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import "ViewControllerGuanzhu.h"
#import "ViewControllerFive.h"
#import "ViewControllertext.h"
@interface ViewControllerGuanzhu ()

@end

@implementation ViewControllerGuanzhu

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"新的关注";
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
       NSString* s = @"strId";
        UITableViewCell*cell = [tableView cellForRowAtIndexPath:indexPath];
        if (cell == nil) {
            cell =  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
        }
       cell.textLabel.text = @"Share 小司";
       // cell附加图样式
       cell.imageView.image = [UIImage imageNamed:@"list_img1.png"];
        UIButton* button = [[UIButton alloc] init];
        cell.accessoryView = button;
        [button setImage:[UIImage imageNamed:@"guanzhu_normal.png"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"guanzhu_pressed.png"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(240, 110, 70, 30);
        [self.tableView addSubview:button];
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
        
        UITableViewCell*cell = [tableView cellForRowAtIndexPath:indexPath];
        if (cell == nil) {
            cell =  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:s];
        }
       cell.textLabel.text = @"Share iOS";
       // cell附加图样式
       cell.imageView.image = [UIImage imageNamed:@"list_img2.png"];
        UIButton* button = [[UIButton alloc] init];
        cell.accessoryView = button;
        [button setImage:[UIImage imageNamed:@"guanzhu_normal.png"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"guanzhu_pressed.png"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(240, 210, 70, 30);
        [self.tableView addSubview:button];
        // 设置tableViewcell----图片大小的方法
       CGSize itemSize = CGSizeMake(30, 30);
             UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
             CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
             [cell.imageView.image drawInRect:imageRect];
             cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
             UIGraphicsEndImageContext();
       return cell;
   }
    return 0;
}
- (void)pressButton:(UIButton*)button {
    button.selected = !button.selected;
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
