//
//  ViewControllerLoading.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import "ViewControllerLoading.h"
#import "ViewControllerTwo.h"
#import "ViewControllerFrist.h"

#import "ViewControllerSecond.h"
#import "ViewControllerThird.h"
#import "ViewControllerFour.h"
#import "ViewControllerFive.h"
#import "ViewControllerRegister.h"
#import "ViewControllerRegister2.h"

@interface ViewControllerLoading ()

@end

@implementation ViewControllerLoading

- (void)viewDidLoad {
    [super viewDidLoad];
    _userName = [[NSMutableArray alloc] init];
    _passWord = [[NSMutableArray alloc]init];
    _imageViewLoad = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"kaiji1.png"]];
    _imageViewLoad.frame = CGRectMake(0, - 23, self.view.frame.size.width, self.view.frame.size.height + 23);
    [self.view addSubview:_imageViewLoad];
    
    // Do any additional setup after loading the view.
    _labelShare = [[UILabel alloc] initWithFrame:CGRectMake( (self.view.frame.size.width) / 2 - 48, (self.view.frame.size.height) / 6 + 160 , 120, 30)];
    _labelShare.text = @"SHARE";
    _labelShare.font = [UIFont systemFontOfSize:28];
    _labelShare.textColor = [UIColor whiteColor];
   
    
    _imageViewShare = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tuxing2.jpg"]];
    _imageViewShare.frame = CGRectMake( (self.view.frame.size.width) / 2 - 90, (self.view.frame.size.height) / 6 - 20 ,170, 170);
    [self.view addSubview:_imageViewShare];
    [self.view addSubview:_labelShare];
    
    
    //用户名输入框
    _textFieldUserName = [[UITextField alloc] init];
    _textFieldUserName.frame = CGRectMake(70, 380, 270, 40);
    _textFieldUserName.placeholder = @"|请输入用户名";
    _textFieldUserName.borderStyle = UITextBorderStyleRoundedRect;
    _textFieldUserName.keyboardType = UIKeyboardTypeURL;
    // 输入框的图片
    UIImageView* imageViewleftUerName = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"yonghuming.png"]];
    imageViewleftUerName.frame = CGRectMake(72, 380, 10, 10);
    _textFieldUserName.leftView = imageViewleftUerName;
    // 设置左边的view永远显示
    _textFieldUserName.leftViewMode = UITextFieldViewModeAlways;
// textField协议
    _textFieldUserName.delegate = self;
    
    //密码输入框
    _textFieldPassWord = [[UITextField alloc] init];
    _textFieldPassWord.frame = CGRectMake(70, 460, 270, 40);
    _textFieldPassWord.placeholder = @"|请输入密码";
    _textFieldPassWord.borderStyle = UITextBorderStyleRoundedRect;
    _textFieldPassWord.secureTextEntry = YES;
    _textFieldPassWord.delegate = self;
    
    // 输入框的图片
    UIImageView* imageViewleftPassWord = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mima.png"]];
    imageViewleftPassWord.frame = CGRectMake(72, 380, 10, 10);
    _textFieldPassWord.leftView = imageViewleftPassWord;
    // 设置左边的view永远显示
    _textFieldPassWord.leftViewMode = UITextFieldViewModeAlways;

    _textFieldPassWord.keyboardType = UIKeyboardTypeDefault;
//
    //登陆button
    _buttontLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _buttontLogin.frame = CGRectMake(100, 530, 80, 40);
    _buttontLogin.tintColor = [UIColor whiteColor];
    [_buttontLogin setTitle:@"登陆" forState:UIControlStateNormal];
    _buttontLogin.titleLabel.font = [UIFont systemFontOfSize:21];
    // button设置边框
    
    // 设置按钮的圆角半径不会被遮挡
    [_buttontLogin.layer setMasksToBounds:YES];
    // 半径
    [_buttontLogin.layer setCornerRadius:12];
    //设置边界的宽度
    [_buttontLogin.layer setBorderWidth:1];
    // 边框颜色
    [_buttontLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    
    //注册button
    _buttontRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _buttontRegister.frame = CGRectMake(240, 530, 80, 40);
    _buttontRegister.tintColor = [UIColor whiteColor];
    [_buttontRegister setTitle:@"注册" forState:UIControlStateNormal];
    _buttontRegister.titleLabel.font = [UIFont systemFontOfSize:21];
    [_buttontRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    [_buttontRegister.layer setMasksToBounds:YES];
    [_buttontRegister.layer setCornerRadius:12];
    [_buttontRegister.layer setBorderWidth:1];
    
    //自动注册button
    _buttonAutoRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _buttonAutoRegister.frame = CGRectMake(70, 580, 80, 20);
    _buttonAutoRegister.tintColor = [UIColor blueColor];
    [_buttonAutoRegister setTitle:@"自动登录" forState:UIControlStateNormal];
    _buttonAutoRegister.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:_buttontLogin];
    [self.view addSubview:_buttontRegister];
    [self.view addSubview:_textFieldUserName];
    [self.view addSubview:_textFieldPassWord];
    [self.view addSubview:_buttonAutoRegister];
   
}
// 键盘弹出屏幕上移方法
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    self.view.frame = CGRectMake(0.0f, - 100.0f / .9f, self.view.frame.size.width, self.view.frame.size.height);
}

//取消第一响应，意思是输入完毕，屏幕恢复原状
- (void)textFieldDidEndEditing:(UITextField*)textField　{
　　self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

-(void) pressLogin {
    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    int boo1 = 0;
    for (int i = 0; i < _userName.count; i ++) {
        if ([_userName[i] isEqualToString:_textFieldUserName.text] && [_passWord[i] isEqualToString:_textFieldPassWord.text]) {
            boo1 = 1;
            break;
        }
    }
    if (boo1 == 1) {
        NSLog(@" 用户名密码正确！");
        ViewControllerFrist* viewFrist = [[ViewControllerFrist alloc] init];
        viewFrist.view.backgroundColor = [UIColor whiteColor];
        UINavigationController* navFrist = [[UINavigationController alloc] initWithRootViewController:viewFrist];
        navFrist.navigationBar.backgroundColor = newColor;
        navFrist.navigationBar.tintColor = newColor;
        
        ViewControllerSecond* viewSecond = [[ViewControllerSecond alloc] init];
        viewSecond.view.backgroundColor = [UIColor whiteColor];
        UINavigationController* navSecond = [[UINavigationController alloc] initWithRootViewController:viewSecond];
        navSecond.navigationBar.backgroundColor = newColor;
        navSecond.navigationBar.tintColor = newColor;
        
        
        ViewControllerThird* viewThird = [[ViewControllerThird alloc] init];
        viewThird.view.backgroundColor = [UIColor whiteColor];
        UINavigationController* navThird = [[UINavigationController alloc] initWithRootViewController:viewThird];
        navThird.navigationBar.backgroundColor = newColor;
        navThird.navigationBar.tintColor = newColor;
        
        ViewControllerFour* viewFour = [[ViewControllerFour alloc] init];
        viewFour.view.backgroundColor = [UIColor whiteColor];
        UINavigationController* navFour = [[UINavigationController alloc] initWithRootViewController:viewFour];
        navFour.navigationBar.backgroundColor = newColor;
        navFour.navigationBar.tintColor = newColor;
        
        ViewControllerFive* viewFive = [[ViewControllerFive alloc] init];
        viewFive.view.backgroundColor = [UIColor whiteColor];
        UINavigationController* navFive = [[UINavigationController alloc] initWithRootViewController:viewFive];
        navFive.navigationBar.backgroundColor = newColor;
        navFive.navigationBar.tintColor = newColor;
        
        
        NSMutableArray* arrayTab = [NSMutableArray arrayWithObjects:navFrist, navSecond, navThird, navFour, navFive, nil];
        UITabBarController* tabBar = [[UITabBarController alloc] init];
        tabBar.viewControllers = arrayTab;
        UIWindow * window = [UIApplication  sharedApplication].windows[0];
        window.rootViewController = tabBar;
        
        UINavigationBarAppearance *appearance = [UINavigationBarAppearance new];
        [appearance configureWithOpaqueBackground];
        appearance.backgroundColor = newColor;
        appearance.shadowColor = [UIColor clearColor];
        navFrist.navigationBar.standardAppearance = appearance;
        navFrist.navigationBar.scrollEdgeAppearance = navFrist.navigationBar.standardAppearance;
        navSecond.navigationBar.standardAppearance = appearance;
        navSecond.navigationBar.scrollEdgeAppearance = navSecond.navigationBar.standardAppearance;
       navThird.navigationBar.standardAppearance = appearance;
        navThird.navigationBar.scrollEdgeAppearance = navThird.navigationBar.standardAppearance;
        navFour.navigationBar.standardAppearance = appearance;
        navFour.navigationBar.scrollEdgeAppearance = navFour.navigationBar.standardAppearance;
     navFive.navigationBar.standardAppearance = appearance;
    navFive.navigationBar.scrollEdgeAppearance = navFive.navigationBar.standardAppearance;

    }
    else {
        UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"验证失败,用户名或密码错误，请检查！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [_alert addAction:sure];
        [self presentViewController:_alert animated:YES completion:nil];
    }
}
- (void)Register1:(NSMutableArray *)arrayRegister :(NSMutableArray *)arrayPassWord {
    // 把账号米密码在这个地方当成2个数组存起来
    _userName = [NSMutableArray arrayWithArray:arrayRegister];
    _passWord = [NSMutableArray arrayWithArray:arrayPassWord];
    NSLog(@"%@DD", _userName[0]);
    NSLog(@"%@DD", _passWord[0]);
}

-(void) pressRegister {
    NSLog(@"11111");
    ViewControllerRegister* viewRegister = [[ViewControllerRegister alloc] init];
    //
    //注册代理的开始
    viewRegister.delegate = self;
    viewRegister.array1 = _userName;
    viewRegister.array2 = _passWord;
    [self presentViewController:viewRegister animated:YES completion:nil];
}
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //回收键盘对象
    [_textFieldUserName resignFirstResponder];
    [_textFieldPassWord resignFirstResponder];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
