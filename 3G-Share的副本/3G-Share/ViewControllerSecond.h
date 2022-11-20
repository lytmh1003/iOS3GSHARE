//
//  ViewControllerSecond.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerSecond : UIViewController<UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
@property (nonatomic, strong)UITableView* tableView;
@property (nonatomic, strong)UITextField* textFieldUserName;
@property (nonatomic, strong)UIButton* buttonSearch;
@end

NS_ASSUME_NONNULL_END
