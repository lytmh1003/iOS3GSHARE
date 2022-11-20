//
//  ViewController inforMation.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/29.
//

#import "ViewController inforMation.h"
#import "ViewControllerSet.h"

@interface ViewController_inforMation ()

@end

@implementation ViewController_inforMation

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"基本资料";
    // Do any additional setup after loading the view.
    _labelOne = [[UILabel alloc] init];
    _labelOne.text = @"头像";
    _labelOne.textColor = [UIColor blackColor];
    _labelOne.font = [UIFont systemFontOfSize:19];
    _labelOne.frame = CGRectMake(30, 120, 50, 20);
    [self.view addSubview:_labelOne];
    
    
    _imageViewOne = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"list_img1.png"]];
    _imageViewOne.frame = CGRectMake(100, 110, 50, 50);
    [self.view addSubview:_imageViewOne];
    
    _labelTwo = [[UILabel alloc] init];
    _labelTwo.text = @"昵称      Share iOS";
    _labelTwo.textColor = [UIColor blackColor];
    _labelTwo.font = [UIFont systemFontOfSize:19];
    _labelTwo.frame = CGRectMake(30, 200, 200, 20);
    [self.view addSubview:_labelTwo];
    
    
    _labelThree = [[UILabel alloc] init];
    _labelThree.text = @"签名      iOS第二摆";
    _labelThree.textColor = [UIColor blackColor];
    _labelThree.font = [UIFont systemFontOfSize:19];
    _labelThree.frame = CGRectMake(30, 260, 300, 20);
    [self.view addSubview:_labelThree];
    
    _labelFour = [[UILabel alloc] init];
    _labelFour.text = @"性别          男         女";
    _labelFour.textColor = [UIColor blackColor];
    _labelFour.font = [UIFont systemFontOfSize:19];
    _labelFour.frame = CGRectMake(30, 320, 200, 20);
    [self.view addSubview:_labelFour];
    
    _buttonOne = [[UIButton alloc] init];
    [_buttonOne setImage:[UIImage imageNamed:@"icon.png"] forState:UIControlStateNormal];
    [_buttonOne setImage:[UIImage imageNamed:@"icon-2.png"] forState:UIControlStateSelected];
    [_buttonOne addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    _buttonOne.frame = CGRectMake(95, 320, 21, 21);
    [self.view addSubview:_buttonOne];
    
    _buttonTwo = [[UIButton alloc] init];
    [_buttonTwo setImage:[UIImage imageNamed:@"icon-3.png"] forState:UIControlStateNormal];
    [_buttonTwo setImage:[UIImage imageNamed:@"icon-4.png"] forState:UIControlStateSelected];
    [_buttonTwo addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    _buttonTwo.frame = CGRectMake(140, 320, 21, 21);
    [self.view addSubview:_buttonTwo];
    
    
}

- (void)pressButton:(UIButton*)button {
    button.selected = !button.selected;
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
