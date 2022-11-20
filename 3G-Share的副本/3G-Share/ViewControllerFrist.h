//
//  ViewControllerFrist.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import <UIKit/UIKit.h>
#import "FristViewControllerNext.h"
#import "SecondTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerFrist : UIViewController<UITableViewDelegate, UITableViewDataSource, GoodDelegate>
- (void)good:(int)zan :(int)fenxiang;
@property(nonatomic, strong)UITableView* tableView;
@property(nonatomic, strong)SecondTableViewCell* cellSecond;
@end

NS_ASSUME_NONNULL_END
