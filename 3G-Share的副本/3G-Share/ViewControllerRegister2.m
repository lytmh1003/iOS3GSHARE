//
//  ViewControllerRegister2.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/26.
//

#import "ViewControllerRegister2.h"

@interface ViewControllerRegister2 ()

@end

@implementation ViewControllerRegister2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _imageViewLoad = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"kaiji1.png"]];
    _imageViewLoad.frame = CGRectMake(0, - 23, self.view.frame.size.width, self.view.frame.size.height + 23);
    [self.view addSubview:_imageViewLoad];
    
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
    imageViewleftPassWord.frame = CGRectMake(72, 460, 10, 10);
    _textFieldPassWord.leftView = imageViewleftPassWord;
    // 设置左边的view永远显示
    _textFieldPassWord.leftViewMode = UITextFieldViewModeAlways;

    _textFieldPassWord.keyboardType = UIKeyboardTypeDefault;
    [self.view addSubview:_textFieldUserName];
    [self.view addSubview:_textFieldPassWord];
    
//    /密码输入框2
    _textFieldPassWord2 = [[UITextField alloc] init];
    _textFieldPassWord2.frame = CGRectMake(70, 520, 270, 40);
    _textFieldPassWord2.placeholder = @"|请输入密码";
    _textFieldPassWord2.borderStyle = UITextBorderStyleRoundedRect;
    _textFieldPassWord2.secureTextEntry = YES;
    _textFieldPassWord2.delegate = self;
    
    // 输入框的图片
    UIImageView* imageViewleftPassWord2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mima.png"]];
    imageViewleftPassWord2.frame = CGRectMake(72, 520, 10, 10);
    _textFieldPassWord2.leftView = imageViewleftPassWord2;
    // 设置左边的view永远显示
    _textFieldPassWord2.leftViewMode = UITextFieldViewModeAlways;

    _textFieldPassWord2.keyboardType = UIKeyboardTypeDefault;
    [self.view addSubview:_textFieldPassWord2];
    
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
