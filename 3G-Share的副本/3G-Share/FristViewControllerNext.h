//
//  FristViewControllerNext.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol GoodDelegate <NSObject>

- (void)good :(int)zan  :(int)fenxiang;

@end
@interface FristViewControllerNext : UIViewController
@property (nonatomic, assign)id<GoodDelegate> delegate;
@property (nonatomic, strong) UIScrollView *scrollview;
@property (nonatomic, assign) int xinnum;
@property (nonatomic, assign) int fenxiangnum;
@property (nonatomic, strong) UILabel *firstlabel;
@property (nonatomic, strong) UILabel *secondlabel;
@property (nonatomic, strong) UILabel *thirdlabel;

@property (nonatomic, strong) UIButton *firstbutton;
@property (nonatomic, strong) UIButton *secondbutton;
@property (nonatomic, strong) UIButton *thirdbutton;

@property (nonatomic, strong) UILabel *xinlabel;
@property (nonatomic, strong) UILabel *chakanlabel;
@property (nonatomic, strong) UILabel *fenxianglabel;
@end

NS_ASSUME_NONNULL_END
