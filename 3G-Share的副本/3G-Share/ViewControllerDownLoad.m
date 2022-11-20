//
//  ViewControllerDownLoad.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/27.
//

#import "ViewControllerDownLoad.h"
#import "ViewControllerImage.h"
#import "SixTableViewCell.h"
@interface ViewControllerDownLoad ()

@end
static NSString* imageStr;
static  NSString* str2;
@implementation ViewControllerDownLoad

- (void)viewDidLoad {
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"iconfanhui1.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressLeft)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
    
    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    _buttonOne = [[UIButton alloc] init];
    _buttonOne.backgroundColor = newColor;
    [_buttonOne setTitle:@"分类" forState:UIControlStateNormal];
    [self.view addSubview:_buttonOne];
    
    _buttonTwo = [[UIButton alloc] init];
    [_buttonTwo setTitle:@"iOS开发" forState:UIControlStateNormal];
    [_buttonTwo addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonTwo setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _buttonTwo.titleLabel.font = [UIFont systemFontOfSize:16];
    _buttonTwo.tag = 1;
    [self.view addSubview:_buttonTwo];
    
    _buttonThree = [[UIButton alloc] init];
//    _buttonThree.backgroundColor = newColor;
    _buttonThree.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonThree setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonThree addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonThree setTitle:@"网页设计" forState:UIControlStateNormal];
    [self.view addSubview:_buttonThree];
    
    _buttonFour = [[UIButton alloc] init];
    _buttonFour.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonFour setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonFour addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonFour setTitle:@"Ui/OC" forState:UIControlStateNormal];
    [self.view addSubview:_buttonFour];
    
    _buttonFive = [[UIButton alloc] init];
    _buttonFive.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonFive setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonFive addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonFive setTitle:@"插画/手绘" forState:UIControlStateNormal];
    [self.view addSubview:_buttonFive];
    
    _buttonSix = [[UIButton alloc] init];

    _buttonSix.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonSix setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonSix addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonSix setTitle:@"3G-Share" forState:UIControlStateNormal];
    [self.view addSubview:_buttonSix];
    
    _buttonSeven = [[UIButton alloc] init];
    _buttonSeven.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonSeven setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonSeven addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonSeven setTitle:@"开源社区" forState:UIControlStateNormal];
    [self.view addSubview:_buttonSeven];
    
    _buttonEight = [[UIButton alloc] init];
    _buttonEight.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonEight setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonEight addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonEight setTitle:@"摄影" forState:UIControlStateNormal];
    [self.view addSubview:_buttonEight];
    
    _buttonNine = [[UIButton alloc] init];
    _buttonNine.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonNine setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonNine addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonNine setTitle:@"其他" forState:UIControlStateNormal];
    [self.view addSubview:_buttonNine];
    
    _imageBiaoqian = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"biaoqian2.png"]];
    [self.view addSubview:_imageBiaoqian];
    
    _buttonOne.frame = CGRectMake(2, 270, 80, 30);
    
    _imageBiaoqian.frame = CGRectMake(0, 270, 30, 30);
    _buttonTwo.frame = CGRectMake(25, 320, 80, 20);
    _buttonThree.frame = CGRectMake(110, 320, 100, 20);
    _buttonFour.frame = CGRectMake(200, 320, 100 ,20);
    _buttonFive.frame = CGRectMake(300, 320, 100, 20);
    _buttonSix.frame = CGRectMake(25, 350, 80, 20);
    _buttonSeven.frame = CGRectMake(110, 350, 100, 20);
    _buttonEight.frame = CGRectMake(200, 350, 100 ,20);
    _buttonNine.frame = CGRectMake(300, 350, 100, 20);
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"发布作品";
    // Do any additional setup after loading the view.
    
//    _labelNumber = [[UILabel alloc] init];
//    _labelNumber.text = str2;
//    _labelNumber.textColor = [UIColor redColor];
//    _labelNumber.font = [UIFont systemFontOfSize:14];
//    _labelNumber.frame = CGRectMake(20, 100, 20, 20);
    
    _buttonImage = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 210, 160)];
    [_buttonImage setImage:[UIImage imageNamed:@"image1.png"] forState:UIControlStateNormal];
    [_buttonImage addTarget:self action:@selector(pressImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonImage];
    _imageViewSet = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"dingwei.png"]];
    _imageViewSet.frame = CGRectMake(230, 150, 20, 20);
    [self.view addSubview:_imageViewSet];
    
    _buttonSet = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_buttonSet setTitle:@"中国.邮电大学" forState:UIControlStateNormal];
    _buttonSet.frame = CGRectMake(265, 150, 120, 20);
    _buttonSet.tintColor = [UIColor whiteColor];
    _buttonSet.titleLabel.font = [UIFont systemFontOfSize:13];
    _buttonSet.backgroundColor = newColor;
    [_buttonSet.layer setMasksToBounds:YES];
    [_buttonSet.layer setCornerRadius:12];
    [_buttonSet.layer setBorderWidth:1];
    [self.view addSubview:_buttonSet];
    
        
    
    _textFieldUserName = [[UITextField alloc] init];
    _textFieldUserName.frame = CGRectMake(10, 410, 470, 30);
    _textFieldUserName.placeholder = @"作品名称";
    _textFieldUserName.borderStyle = UITextBorderStyleRoundedRect;
    _textFieldUserName.keyboardType = UIKeyboardTypeURL;
    [self.view addSubview:_textFieldUserName];
    
    _textFieldNr = [[UITextField alloc] init];
    _textFieldNr.frame = CGRectMake(10, 445, 470, 80);
    _textFieldNr.placeholder = @"请添加作品说明文章内容.......";
    _textFieldNr.borderStyle = UITextBorderStyleRoundedRect;
    _textFieldNr.keyboardType = UIKeyboardTypeURL;
    [self.view addSubview:_textFieldNr];
    
    
    _buttonSend = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _buttonSend.frame = CGRectMake(5, 540, self.view.frame.size.width - 10, 50);
    [_buttonSend setTitle:@"发布" forState:UIControlStateNormal];
    _buttonSend.backgroundColor = newColor;
    _buttonSend.titleLabel.font = [UIFont systemFontOfSize:19];
    [_buttonSend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_buttonSend addTarget:self action:@selector(pressSend) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonSend];
    
    _label = [[UILabel alloc] init];
    _label.text = @"禁止下载";
    _label.textColor = [UIColor blackColor];
    _label.frame = CGRectMake(25, 595, 70, 20);
    _label.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:_label];
    
    
    _buttonNo = [[UIButton alloc] initWithFrame:CGRectMake(1, 593, 23, 23)];
    [_buttonNo setImage:[UIImage imageNamed:@"weixuanzhong.png"] forState:UIControlStateNormal];
    [_buttonNo setImage:[UIImage imageNamed:@"xuanzhong.png"] forState:UIControlStateSelected];
    [_buttonNo addTarget:self action:@selector(pressNo:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonNo];
    [self.view addSubview:_foldTableView];
    [self.view addSubview:_foldButton];
    
    // 折叠CEll
    _foldTableView = [[UITableView alloc] initWithFrame:CGRectMake(260, 180, 80, 50) style:UITableViewStylePlain];
    _foldTableView.delegate = self;
    _foldTableView.dataSource = self;
    [self.view addSubview:_foldTableView];
    [_foldTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"normal"];
    
    _foldArray = [NSMutableArray arrayWithObjects:@"内容1", @"内容2", @"内容3", @"内容4", @"内容5", @"内容6", @"内容7", nil];
    
    _foldButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_foldButton.layer setMasksToBounds:YES];
    [_foldButton.layer setCornerRadius:15.0];
    [_foldButton setTitle:@"类型选择" forState:UIControlStateNormal];
    [_foldButton setTitle:@"点击收起" forState:UIControlStateSelected];
    [_foldButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_foldButton setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
_foldButton.backgroundColor = newColor;
    _foldButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [_foldButton addTarget:self action:@selector(pressFoldButton:) forControlEvents:UIControlEventTouchUpInside];
    _foldButton.frame = CGRectMake(10, 0, 80, 40);
    
}
- (void)pressLeft {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)pressNo:(UIButton*)button {
    _buttonNo.selected = !_buttonNo.selected;
}
- (void)pressSend {
    UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"发布成功，快去看看吧！" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [_alert addAction:sure];
    [self presentViewController:_alert animated:YES completion:nil];
}
- (void)changeImage:(NSString *)str1 {
    imageStr = [NSString stringWithString:str1];
    [_buttonImage setImage:[UIImage imageNamed:imageStr] forState:UIControlStateNormal];
    NSLog(@"11111");
    NSLog(@"%@", str1);
}
- (void)returnNumber:(int )num1 {
    str2 = [NSString stringWithFormat:@"%d", num1];
    _labelNumber = [[UILabel alloc] init];
    _labelNumber.text = str2;
    _labelNumber.textColor = [UIColor redColor];
    _labelNumber.font = [UIFont systemFontOfSize:14];
    _labelNumber.frame = CGRectMake(20, 100, 20, 20);
    [self.view addSubview:_labelNumber];
    NSLog(@"%@", str2);
}
- (void)pressImage {
    ViewControllerImage* viewImage = [[ViewControllerImage alloc] init];
    viewImage.delegate = self;
    [self.navigationController pushViewController:viewImage animated:YES];
}

- (void)pressButtonTwo:(UIButton*)button {
    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    if (button.tag == 1) {
        button.backgroundColor = newColor;
        button.tag = 0;
    } else {
        button.backgroundColor = [UIColor whiteColor];
        button.tag = 1;
    }

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _foldArray.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* normalCell = [_foldTableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        [normalCell.contentView addSubview:_foldButton];
    } else {
        normalCell.textLabel.text = _foldArray[indexPath.row - 1];
        normalCell.textLabel.textColor = [UIColor blackColor];
        normalCell.textLabel.textAlignment = NSTextAlignmentCenter;
        normalCell.textLabel.font = [UIFont systemFontOfSize:10];
        normalCell.backgroundColor = [UIColor whiteColor];
    }
    return normalCell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row != 0) {
        [_foldButton setTitle:_foldArray[indexPath.row - 1] forState:UIControlStateNormal];
        _foldTableView.frame = CGRectMake(260, 180, 100, 40);
    }
    [_foldTableView reloadData];
}
- (void)pressFoldButton:(UIButton*)button {
    if (button.selected == YES) {
        button.selected = NO;
        _foldTableView.frame = CGRectMake(260, 180, 100, 40);
    } else if (button.selected == NO) {
        button.selected = YES;
        _foldTableView.frame = CGRectMake(260, 180, 100, 40 * _foldArray.count);
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
