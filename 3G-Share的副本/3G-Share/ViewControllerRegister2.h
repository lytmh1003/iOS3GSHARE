//
//  ViewControllerRegister2.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerRegister2 : UIViewController<UITextFieldDelegate>
@property (nonatomic, strong) UIImageView* imageViewLoad;
@property (nonatomic, strong) UILabel* labelShare;
@property (nonatomic, strong) UIImageView* imageViewShare;
@property (nonatomic, strong) UITextField* textFieldUserName;
@property (nonatomic, strong) UITextField* textFieldPassWord;
@property (nonatomic, strong) UITextField* textFieldPassWord2;

@end

NS_ASSUME_NONNULL_END
