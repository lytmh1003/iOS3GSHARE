//
//  ViewControllerShangchuan.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerShangchuan : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong)UISegmentedControl* sControl;
@property(nonatomic, strong)UIScrollView* scrollView;
@property(nonatomic, strong)UITableView* tableViewOne;
@property(nonatomic, strong)UITableView* tableViewTwo;
@property(nonatomic, strong)UITableView* tableViewThree;
@end

NS_ASSUME_NONNULL_END
