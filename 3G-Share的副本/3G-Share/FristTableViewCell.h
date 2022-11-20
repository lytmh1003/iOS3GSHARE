//
//  FristTableViewCell.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FristTableViewCell : UITableViewCell<UIScrollViewDelegate>
@property(nonatomic, strong) UIScrollView* scrollview;
@property(nonatomic, strong) NSArray <NSString*> *imageNameList;
@property(nonatomic, strong) UIPageControl* pageControl;
@property(nonatomic, strong) NSTimer* myTimer;
@end

NS_ASSUME_NONNULL_END
