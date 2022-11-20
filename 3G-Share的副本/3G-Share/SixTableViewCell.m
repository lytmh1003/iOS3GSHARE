//
//  SixTableViewCell.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/26.
//

#import "SixTableViewCell.h"
@implementation SixTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    _textFieldUserName = [[UITextField alloc] init];
//    _textFieldUserName.placeholder = @"搜索 用户名 作品分类 文章";
//    _textFieldUserName.borderStyle = UITextBorderStyleRoundedRect;
//    _textFieldUserName.keyboardType = UIKeyboardTypeURL;
//    _textFieldUserName.delegate = self;
//    // 输入框的图片
//    UIImageView* imageViewleftUerName = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sousuo.png"]];
//    _textFieldUserName.leftView = imageViewleftUerName;
//    // 设置左边的view永远显示
//    _textFieldUserName.leftViewMode = UITextFieldViewModeAlways;
//    [self.contentView addSubview:_textFieldUserName];

    _buttonOne = [[UIButton alloc] init];
    _buttonOne.backgroundColor = newColor;
    [_buttonOne setTitle:@"分类" forState:UIControlStateNormal];
    [self.contentView addSubview:_buttonOne];
    
    _buttonTwo = [[UIButton alloc] init];
    [_buttonTwo setTitle:@"iOS开发" forState:UIControlStateNormal];
    [_buttonTwo addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonTwo setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _buttonTwo.titleLabel.font = [UIFont systemFontOfSize:16];
    _buttonTwo.tag = 1;
    [self.contentView addSubview:_buttonTwo];
    
    _buttonThree = [[UIButton alloc] init];
//    _buttonThree.backgroundColor = newColor;
    _buttonThree.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonThree setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonThree addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonThree setTitle:@"网页设计" forState:UIControlStateNormal];
    [self.contentView addSubview:_buttonThree];
    
    _buttonFour = [[UIButton alloc] init];
    _buttonFour.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonFour setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonFour addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonFour setTitle:@"Ui/OC" forState:UIControlStateNormal];
    [self.contentView addSubview:_buttonFour];
    
    _buttonFive = [[UIButton alloc] init];
    _buttonFive.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonFive setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonFive addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonFive setTitle:@"插画/手绘" forState:UIControlStateNormal];
    [self.contentView addSubview:_buttonFive];
    
    _buttonSix = [[UIButton alloc] init];

    _buttonSix.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonSix setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonSix addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonSix setTitle:@"3G-Share" forState:UIControlStateNormal];
    [self.contentView addSubview:_buttonSix];
    
    _buttonSeven = [[UIButton alloc] init];
    _buttonSeven.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonSeven setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonSeven addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonSeven setTitle:@"开源社区" forState:UIControlStateNormal];
    [self.contentView addSubview:_buttonSeven];
    
    _buttonEight = [[UIButton alloc] init];
    _buttonEight.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonEight setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonEight addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonEight setTitle:@"摄影" forState:UIControlStateNormal];
    [self.contentView addSubview:_buttonEight];
    
    _buttonNine = [[UIButton alloc] init];
    _buttonNine.titleLabel.font = [UIFont systemFontOfSize:16];
    [_buttonNine setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonNine addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonNine setTitle:@"其他" forState:UIControlStateNormal];
    [self.contentView addSubview:_buttonNine];
    
    _imageBiaoqian = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"biaoqian2.png"]];
    [self.contentView addSubview:_imageBiaoqian];
    
    return self;
}

- (void)layoutSubviews {
//    _textFieldUserName.frame = CGRectMake(0, 12, 500, 40);
    _buttonOne.frame = CGRectMake(2, 80, 80, 30);
    
    _imageBiaoqian.frame = CGRectMake(0, 80, 30, 30);
    _buttonTwo.frame = CGRectMake(25, 130, 80, 20);
    _buttonThree.frame = CGRectMake(110, 130, 100, 20);
    _buttonFour.frame = CGRectMake(200, 130, 100 ,20);
    _buttonFive.frame = CGRectMake(300, 130, 100, 20);
    _buttonSix.frame = CGRectMake(25, 160, 80, 20);
    _buttonSeven.frame = CGRectMake(110, 160, 100, 20);
    _buttonEight.frame = CGRectMake(200, 160, 100 ,20);
    _buttonNine.frame = CGRectMake(300, 160, 100, 20);
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)pressButtonTwo:(UIButton*)button {
    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    if (button.tag < 100) {
        button.backgroundColor = newColor;
        button.tintColor = [UIColor whiteColor];
        button.tag += 100;
    } else {
        button.backgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blackColor];
        button.tag -= 100;
    }

}
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //回收键盘对象
    [_textFieldUserName resignFirstResponder];
}

@end
