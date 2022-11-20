//
//  EightTableViewCell.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/26.
//

#import "EightTableViewCell.h"

@implementation EightTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
   self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
   UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
   _buttonOne = [[UIButton alloc] init];
   _buttonOne.backgroundColor = newColor;
   [_buttonOne setTitle:@"时间" forState:UIControlStateNormal];
    [_buttonOne addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   [self.contentView addSubview:_buttonOne];
   
   _buttonTwo = [[UIButton alloc] init];
//    _buttonTwo.backgroundColor = newColor;
   [_buttonTwo setTitle:@"30分钟前" forState:UIControlStateNormal];
   [_buttonTwo setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonTwo addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   _buttonTwo.titleLabel.font = [UIFont systemFontOfSize:16];
   [self.contentView addSubview:_buttonTwo];
   
   _buttonThree = [[UIButton alloc] init];
//    _buttonThree.backgroundColor = newColor;
   _buttonThree.titleLabel.font = [UIFont systemFontOfSize:16];
   [_buttonThree setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonThree addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   [_buttonThree setTitle:@"1小时前" forState:UIControlStateNormal];
   [self.contentView addSubview:_buttonThree];
   
   _buttonFour = [[UIButton alloc] init];
//    _buttonFour.backgroundColor = newColor;
   _buttonFour.titleLabel.font = [UIFont systemFontOfSize:16];
   [_buttonFour setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonFour addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   [_buttonFour setTitle:@"1月前" forState:UIControlStateNormal];
   [self.contentView addSubview:_buttonFour];
   
   _buttonFive = [[UIButton alloc] init];
//    _buttonFive.backgroundColor = newColor;
   _buttonFive.titleLabel.font = [UIFont systemFontOfSize:16];
   [_buttonFive setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonFive addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   [_buttonFive setTitle:@"半年前" forState:UIControlStateNormal];
   [self.contentView addSubview:_buttonFive];
   
   _buttonSix = [[UIButton alloc] init];
//    _buttonSix.backgroundColor = newColor;
   _buttonSix.titleLabel.font = [UIFont systemFontOfSize:16];
   [_buttonSix setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonSix addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   [_buttonSix setTitle:@"历史浏览" forState:UIControlStateNormal];
   [self.contentView addSubview:_buttonSix];
   
   _buttonSeven = [[UIButton alloc] init];
//    _buttonSeven.backgroundColor = newColor;
   _buttonSeven.titleLabel.font = [UIFont systemFontOfSize:16];
   [_buttonSeven setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonSeven addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   [_buttonSeven setTitle:@"访问历史" forState:UIControlStateNormal];
   [self.contentView addSubview:_buttonSeven];
   
   _buttonEight = [[UIButton alloc] init];
//    _buttonEight.backgroundColor = newColor;
   _buttonEight.titleLabel.font = [UIFont systemFontOfSize:16];
   [_buttonEight setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonEight addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   [_buttonEight setTitle:@"排行榜" forState:UIControlStateNormal];
   [self.contentView addSubview:_buttonEight];
   
   _buttonNine = [[UIButton alloc] init];
//    _buttonNine.backgroundColor = newColor;
   _buttonNine.titleLabel.font = [UIFont systemFontOfSize:16];
   [_buttonNine setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_buttonTwo addTarget:self action:@selector(pressButtonTwo:) forControlEvents:UIControlEventTouchUpInside];
   [_buttonNine setTitle:@"更多" forState:UIControlStateNormal];
   [self.contentView addSubview:_buttonNine];
   
   _imageBiaoqian = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"biaoqian2.png"]];
   [self.contentView addSubview:_imageBiaoqian];
   
   return self;
}

- (void)layoutSubviews {
   _buttonOne.frame = CGRectMake(2, 10, 80, 30);
   _imageBiaoqian.frame = CGRectMake(0, 10, 30, 30);
   _buttonTwo.frame = CGRectMake(25, 60, 80, 20);
   _buttonThree.frame = CGRectMake(110, 60, 100, 20);
   _buttonFour.frame = CGRectMake(200, 60, 100 ,20);
   _buttonFive.frame = CGRectMake(300, 60, 100, 20);
   _buttonSix.frame = CGRectMake(25, 90, 80, 20);
   _buttonSeven.frame = CGRectMake(110, 90, 100, 20);
   _buttonEight.frame = CGRectMake(200, 90, 100 ,20);
   _buttonNine.frame = CGRectMake(300, 90, 100, 20);
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)pressButtonTwo:(UIButton*)button {
    UIColor* newColor = [UIColor colorWithRed:0.2f green:0.6f blue:0.9f alpha:1.0f];
    if (button.tag == 0) {
        button.backgroundColor = [UIColor whiteColor];
        button.tag = 1;
    } else {
        button.backgroundColor = newColor;
        button.tag = 0;
    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
