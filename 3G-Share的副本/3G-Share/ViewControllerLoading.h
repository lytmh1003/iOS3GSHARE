//
//  ViewControllerLoading.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import <UIKit/UIKit.h>
#import "ViewControllerRegister.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerLoading : UIViewController<Register, UITextFieldDelegate>
- (void)Register1:(NSMutableArray *)arrayRegister :(NSMutableArray *)arrayPassWord;
@property (nonatomic, strong) UILabel* labelShare;
@property (nonatomic, strong) UIImageView* imageViewShare;

@property (nonatomic, strong) UITextField* textFieldUserName;
@property (nonatomic, strong) UITextField* textFieldPassWord;

//Login;
@property (nonatomic, strong) UIButton *buttontLogin;

//注册Register;
@property (nonatomic, strong) UIButton *buttontRegister;
@property (nonatomic, strong) UIImageView* imageViewLoad;
// 自动登录
@property (nonatomic, strong) UIButton* buttonAutoRegister;
@property (nonatomic, strong) NSMutableArray* userName;
@property(nonatomic, strong) NSMutableArray* passWord;
@end

NS_ASSUME_NONNULL_END
