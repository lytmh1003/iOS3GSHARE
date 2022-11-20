//
//  ViewControllerImage.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/27.
//

#import "ViewControllerImage.h"
#import "ViewControllerDownLoad.h"

@interface ViewControllerImage ()

@end
static int num = 0;
static NSString* str;
@implementation ViewControllerImage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 右上角上传
    UIBarButtonItem* buttonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yunshangchuan.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressYun)];
    buttonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = buttonItem;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"iconfanhui1.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressLeft)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
    
    self.view.backgroundColor = [UIColor grayColor];
    self.tabBarItem.title = @" 更换头像";
    _buttonImageOne = [[UIButton alloc] init];
    [_buttonImageOne setImage: [UIImage imageNamed:@"22.jpeg"]  forState:UIControlStateNormal];
    _buttonImageOne.frame = CGRectMake(20, 100, 100, 100);
    _buttonImageOne.tag = 1;
    [_buttonImageOne addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImageOne];
    
    _buttonImageTwo = [[UIButton alloc] init];
    [_buttonImageTwo setImage: [UIImage imageNamed:@"23.jpeg"]  forState:UIControlStateNormal];
    _buttonImageTwo.frame = CGRectMake(20, 240, 100, 100);
    _buttonImageTwo.tag = 2;
    [_buttonImageTwo addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImageTwo];
    
    _buttonImageThree = [[UIButton alloc] init];
    [_buttonImageThree setImage: [UIImage imageNamed:@"24.jpeg"]  forState:UIControlStateNormal];
    _buttonImageThree.frame = CGRectMake(20, 380, 100, 100);
    _buttonImageThree.tag = 3;
    [_buttonImageThree addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImageThree];
    
    _buttonImageFour = [[UIButton alloc] init];
    [_buttonImageFour setImage: [UIImage imageNamed:@"25.jpeg"]  forState:UIControlStateNormal];
    _buttonImageFour.frame = CGRectMake(20, 520, 100, 100);
    _buttonImageFour.tag = 4;
    [_buttonImageFour addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImageFour];
    
    
    _buttonImage5 = [[UIButton alloc] init];
    [_buttonImage5 setImage: [UIImage imageNamed:@"22.jpeg"]  forState:UIControlStateNormal];
    _buttonImage5.tag = 5;
    _buttonImage5.frame = CGRectMake(140, 100, 100, 100);
    [_buttonImage5 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImage5];
    
    _buttonImage6 = [[UIButton alloc] init];
    [_buttonImage6 setImage: [UIImage imageNamed:@"23.jpeg"]  forState:UIControlStateNormal];
    _buttonImage6.frame = CGRectMake(140, 240, 100, 100);
    _buttonImage6.tag = 6;
    [_buttonImage6 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImage6];
    
    _buttonImage7 = [[UIButton alloc] init];
    [_buttonImage7 setImage: [UIImage imageNamed:@"24.jpeg"]  forState:UIControlStateNormal];
    _buttonImage7.tag = 7;
    _buttonImage7.frame = CGRectMake(140, 380, 100, 100);
    [_buttonImage7 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImage7];
    
    _buttonImage8 = [[UIButton alloc] init];
    [_buttonImage8 setImage: [UIImage imageNamed:@"25.jpeg"]  forState:UIControlStateNormal];
    _buttonImage8.tag = 8;
    _buttonImage8.frame = CGRectMake(140, 520, 100, 100);
    [_buttonImage8 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImage8];
    
}

- (void)pressButton:(UIButton*)button {
    UIView* view  = [[UIView alloc] init];
    view.backgroundColor = [UIColor greenColor];
    if (button.tag < 9) {
        num ++;
        if (button.tag < 4) {
            str =  [NSMutableString stringWithFormat:@"%ld.jpeg", (button.tag) + 21];
            view.frame = CGRectMake(110, (140 * button.tag) - 40, 12, 12);
        } else {
            view.frame = CGRectMake(230, (140 * (button.tag) / 2) - 40, 12, 12);
        }
        button.tag += 100;
        [self.view bringSubviewToFront:view];
    } else {
        str =  [NSMutableString stringWithFormat:@"%ld.jpeg", (button.tag) / 2 + 21];
        num --;
        button.tag -= 100;
        [self.view bringSubviewToFront:button];
    }
    [self.view addSubview:view];
}
- (void)pressLeft {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)pressYun {
    [_delegate changeImage:str];
    [_delegate returnNumber:num];
    [self.navigationController popViewControllerAnimated:YES];

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
