//
//  ViewControllerPassWord.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/29.
//

#import "ViewControllerPassWord.h"

@interface ViewControllerPassWord ()

@end

@implementation ViewControllerPassWord

- (void)viewDidLoad {
    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"修改密码";
    _labelOne = [[UILabel alloc] init];
    _labelOne.text = @"旧密码";
    _labelOne.textColor = [UIColor blackColor];
    _labelOne.font = [UIFont systemFontOfSize:19];
    _labelOne.frame = CGRectMake(10, 115, 70, 20);
 
    
    _t1 = [[UITextField alloc] init];
    _t1.frame = CGRectMake(80, 100, 500, 50);
    _t1.placeholder = @"   6-20位英文或数字组合";
    _t1.borderStyle = UITextBorderStyleRoundedRect;
//    _t1.secureTextEntry = YES;
    _t1.delegate = self;
    [self.view addSubview:_t1];
    [self.view addSubview:_labelOne];
    
    _labelTwo = [[UILabel alloc] init];
    _labelTwo.text = @"新密码";
    _labelTwo.textColor = [UIColor blackColor];
    _labelTwo.font = [UIFont systemFontOfSize:19];
    _labelTwo.frame = CGRectMake(10, 215, 70, 20);
 
    
    _t2 = [[UITextField alloc] init];
    _t2.frame = CGRectMake(80, 200, 500, 50);
    _t2.placeholder = @"6-20位英文或数字组合";
    _t2.borderStyle = UITextBorderStyleRoundedRect;
//    _t1.secureTextEntry = YES;
    _t2.delegate = self;
    [self.view addSubview:_t2];
    [self.view addSubview:_labelTwo];
    
    _labelThree = [[UILabel alloc] init];
    _labelThree.text = @"确认密码";
    _labelThree.textColor = [UIColor blackColor];
    _labelThree.font = [UIFont systemFontOfSize:19];
    _labelThree.frame = CGRectMake(10, 315, 90, 20);
 
    
    _t3 = [[UITextField alloc] init];
    _t3.frame = CGRectMake(80, 300, 500, 50);
    _t3.placeholder = @" 请再次确认新密码";
    _t3.borderStyle = UITextBorderStyleRoundedRect;
//    _t1.secureTextEntry = YES;
    _t3.delegate = self;
    [self.view addSubview:_t3];
    [self.view addSubview:_labelThree];
    
    
    _button = [[UIButton alloc] init];
    [_button setTitle:@"提交" forState:UIControlStateNormal];
    _button.frame = CGRectMake(200, 400, 60, 21);
    _button.backgroundColor = newColor;
    [_button addTarget:self action:@selector(press1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
}
- (void)press1 {
    NSString* str1 = _t2.text;
    NSString* str2 = _t3.text;
    if ([str1 isEqualToString:str2]) {
        UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"修改成功！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [_alert addAction:sure];
        [self presentViewController:_alert animated:YES completion:nil];
    } else {
        UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"两次密码输入不一致！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [_alert addAction:sure];
        [self presentViewController:_alert animated:YES completion:nil];
    }
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
