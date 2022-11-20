//
//  ViewControllerPassWord.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerPassWord : UIViewController<UITextFieldDelegate>
@property(nonatomic, strong)UITextField* t1;
@property(nonatomic, strong)UITextField* t2;
@property(nonatomic, strong)UITextField* t3;
@property(nonatomic, strong)UIButton* button;
@property (nonatomic, strong) UILabel* labelOne;
@property (nonatomic, strong) UILabel* labelTwo;
@property (nonatomic, strong) UILabel* labelThree;

@end

NS_ASSUME_NONNULL_END
