//
//  ViewControllerFive.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import <UIKit/UIKit.h>
#import "ViewControllertext.h"
#import "ViewControllerSet.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerFive : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    ViewControllerSet* viewSet;
    ViewControllertext* viewtext;
}
@property(nonatomic, strong)UITableView* tableView;
@end

NS_ASSUME_NONNULL_END
