//
//  ViewControllertext.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import <UIKit/UIKit.h>
#import "ViewControllerGuanzhu.h"


NS_ASSUME_NONNULL_BEGIN

@interface ViewControllertext : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    ViewControllerGuanzhu* View;
}
@property(nonatomic, strong)UITableView* tableView;
@property(nonatomic, strong)ViewControllerGuanzhu* view1;
@end

NS_ASSUME_NONNULL_END
