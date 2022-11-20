//
//  TableViewCellPage.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCellPage : UITableViewCell
@property(nonatomic, strong)UIScrollView* scrollView;
@property(nonatomic, strong)UIButton* buttonOne;
@property(nonatomic, strong)UIButton* buttonTwo;
@property(nonatomic, strong)UIButton* buttonThree;

@end

NS_ASSUME_NONNULL_END
