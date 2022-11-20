//
//  ViewControllerShangchuan.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import "ViewControllerShangchuan.h"
#import "SecondTableViewCell.h"
#import "ThirdTableViewCell.h"
#import "FourTableViewCell.h"
#import "FiveTableViewCell.h"
#import "ViewControllerFive.h"
#define width [UIScreen mainScreen].bounds.size.width
#define height [UIScreen mainScreen].bounds.size.height
@interface ViewControllerShangchuan ()

@end
@implementation ViewControllerShangchuan
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 芬兰控制器
    UIBarButtonItem* buttonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yunshangchuan.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressYun)];
    buttonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = buttonItem;
    
    self.title = @"我的作品";    
    _scrollView = [[UIScrollView alloc] init];
    _scrollView.frame = CGRectMake(0, 50,width , height * 2);
    _scrollView.contentSize = CGSizeMake(width * 3, 100);
    _scrollView.pagingEnabled = YES;
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.alwaysBounceHorizontal = NO;
    _scrollView.alwaysBounceVertical = NO;
    _scrollView.bounces = YES;
    _scrollView.delegate = self;
    _scrollView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollView];
    
    _sControl = [[UISegmentedControl alloc] initWithFrame:CGRectMake(0, 90, width, 50)];
    [_sControl insertSegmentWithTitle:@"上传时间" atIndex:0 animated:YES];
    [_sControl insertSegmentWithTitle:@"推荐最多" atIndex:1 animated:YES];
    [_sControl insertSegmentWithTitle:@"分享最多" atIndex:2 animated:YES];
    [_sControl addTarget:self action:@selector(pressSc:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_sControl];
    
    _tableViewOne = [[UITableView alloc] init];
    _tableViewOne.frame = CGRectMake(0, 50, width, 800);
    _tableViewOne.delegate = self;
    _tableViewOne.dataSource = self;
    _tableViewOne.tag = 1;
    [_scrollView addSubview:_tableViewOne];
    
    _tableViewTwo = [[UITableView alloc] init];
    _tableViewTwo.frame = CGRectMake(width, 50, width, 800);
    _tableViewTwo.delegate = self;
    _tableViewTwo.dataSource = self;
    _tableViewTwo.tag = 2;
    [_scrollView addSubview:_tableViewTwo];
    
    _tableViewThree = [[UITableView alloc] init];
    _tableViewThree.frame = CGRectMake(width * 2, 50, width, 800);
    _tableViewThree.delegate = self;
    _tableViewThree.dataSource = self;
    _tableViewThree.tag = 3;
    [_scrollView addSubview:_tableViewThree];
    
    [_tableViewOne registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [_tableViewOne registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"3"];
    [_tableViewOne registerClass:[FourTableViewCell class] forCellReuseIdentifier:@"4"];
    [_tableViewOne registerClass:[FiveTableViewCell class] forCellReuseIdentifier:@"5"];
    
    [_tableViewTwo registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [_tableViewTwo registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"3"];
    [_tableViewTwo registerClass:[FourTableViewCell class] forCellReuseIdentifier:@"4"];
    [_tableViewTwo registerClass:[FiveTableViewCell class] forCellReuseIdentifier:@"5"];
    
    [_tableViewThree registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [_tableViewThree registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"3"];
    [_tableViewThree registerClass:[FourTableViewCell class] forCellReuseIdentifier:@"4"];
    [_tableViewThree registerClass:[FiveTableViewCell class] forCellReuseIdentifier:@"5"];
    
}

- (void)pressSc : (UISegmentedControl*) seg{
    if (seg.selectedSegmentIndex == 0) {
        [_scrollView setContentOffset:CGPointMake(0, -40) animated:YES];
    } else if (seg.selectedSegmentIndex == 1) {
        [_scrollView setContentOffset:CGPointMake(width, -40) animated:YES];
    } else if (seg.selectedSegmentIndex == 2) {
        [_scrollView setContentOffset:CGPointMake(2 * width, -40) animated:YES];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (_scrollView.contentOffset.x == 0) {
        _sControl.selectedSegmentIndex = 0;
    } else if (_scrollView.contentOffset.x == width) {
        _sControl.selectedSegmentIndex = 1;
    } else if (_scrollView.contentOffset.x == width * 2) {
        _sControl.selectedSegmentIndex = 2;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
        return 160;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     if (indexPath.section == 0) {
        SecondTableViewCell* cell = [self.tableViewOne dequeueReusableCellWithIdentifier:@"2"];
        SecondTableViewCell* cell2 = [self.tableViewTwo dequeueReusableCellWithIdentifier:@"2"];
        SecondTableViewCell* cell3 = [self.tableViewThree dequeueReusableCellWithIdentifier:@"2"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
        return cell2;
        return cell3;
    }  else if (indexPath.section == 1) {
        ThirdTableViewCell* cell = [self.tableViewOne dequeueReusableCellWithIdentifier:@"3"];
        ThirdTableViewCell* cell2 = [self.tableViewTwo dequeueReusableCellWithIdentifier:@"3"];
        ThirdTableViewCell* cell3 = [self.tableViewThree dequeueReusableCellWithIdentifier:@"3"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
        return cell2;
        return cell3;
    }  else if (indexPath.section == 2) {
        FourTableViewCell* cell = [self.tableViewOne dequeueReusableCellWithIdentifier:@"4"];
        FourTableViewCell* cell2 = [self.tableViewTwo dequeueReusableCellWithIdentifier:@"4"];
        FourTableViewCell* cell3 = [self.tableViewThree dequeueReusableCellWithIdentifier:@"4"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell2;
        return cell;
        return cell3;
    }  else if (indexPath.section == 3) {
        FiveTableViewCell* cell3 = [self.tableViewOne dequeueReusableCellWithIdentifier:@"5"];
        FiveTableViewCell* cell2 = [self.tableViewTwo dequeueReusableCellWithIdentifier:@"5"];
        FiveTableViewCell* cell = [self.tableViewThree dequeueReusableCellWithIdentifier:@"5"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
        return cell2;
        return cell3;
    }
    return 0;
}
- (void) pressYun {
    ViewControllerFive* five = [[ViewControllerFive alloc] init];
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
