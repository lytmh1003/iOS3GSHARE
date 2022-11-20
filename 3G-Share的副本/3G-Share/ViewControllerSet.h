//
//  ViewControllerSet.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import <UIKit/UIKit.h>
#import "ViewController inforMation.h"
#import "ViewControllermessage2.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerSet : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    ViewController_inforMation* _View;
    ViewControllermessage2* _ViewMessage;
    UIAlertController *alert;
}
@property(nonatomic, strong)UITableView* tableView;
//@property ViewController_inforMation* View;
@end

NS_ASSUME_NONNULL_END
