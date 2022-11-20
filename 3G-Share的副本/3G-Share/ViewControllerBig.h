//
//  ViewControllerBig.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerBig : UIViewController<UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong)UITableView* tableView;
@property (nonatomic, strong)UITextField* textFieldUserName;
@end

NS_ASSUME_NONNULL_END
