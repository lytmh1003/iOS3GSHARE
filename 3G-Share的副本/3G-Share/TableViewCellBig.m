//
//  TableViewCellBig.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/27.
//

#import "TableViewCellBig.h"

static int num = 300;
@implementation TableViewCellBig
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"9"]) {
        _labelOne = [[UILabel alloc] init];
        _labelOne.text = @"夏日分享";
//        _labelOne.textColor = [UIColor blackColor];
        _labelOne.font = [UIFont systemFontOfSize:20];
        
        
        _labelTwo = [[UILabel alloc] init];
        _labelTwo.text = @"Share By 小司";
        _labelTwo.font = [UIFont systemFontOfSize:14];
        _labelThree = [[UILabel alloc] init];
        _labelThree.text = @"原创-插画-练习习作";
        _labelThree.textColor = [UIColor grayColor];
        _labelThree.font = [UIFont systemFontOfSize:12];
        
        _labelFour = [[UILabel alloc] init];
        _labelFour.text = @"15分钟前";
        _labelFour.font = [UIFont systemFontOfSize:12];
        
//        NSString* str = [NSString stringWithUTF8String:x];
        _labelFive = [[UILabel alloc] init];
        _labelFive.textColor = [UIColor grayColor];
        _labelFive.font = [UIFont systemFontOfSize:13];
        
        _labelSix = [[UILabel alloc] init];
        _labelSix.text = @"26";
        _labelSix.font = [UIFont systemFontOfSize:13];
        _labelSix.textColor = [UIColor grayColor];
        
        _labelSeven = [[UILabel alloc] init];
        _labelSeven.text = @"190";
        _labelSeven.textColor = [UIColor grayColor];
        _labelSeven.font = [UIFont systemFontOfSize:13];
        
        
        [self.contentView addSubview:_labelOne];
        [self.contentView addSubview:_labelTwo];
        [self.contentView addSubview:_labelThree];
        [self.contentView addSubview:_labelFour];
        [self.contentView addSubview:_labelFive];
        [self.contentView addSubview:_labelSix];
        [self.contentView addSubview:_labelSeven];
        
        
        
        _buttonOne = [[UIButton alloc] init];
        [_buttonOne setImage:[UIImage imageNamed:@"good.png"] forState:UIControlStateNormal];
//        _buttonOne.tintColor = [UIColor grayColor];、
        // 改变button图标步骤1
        [_buttonOne setImage:[UIImage imageNamed:@"dianzan.png"] forState:UIControlStateSelected];
        [_buttonOne addTarget:self action:@selector(pressButtonOne:) forControlEvents:UIControlEventTouchUpInside];
        
        
        _buttonTwo = [[UIButton alloc] init];
        [_buttonTwo setImage:[UIImage imageNamed:@"liulan.png"] forState:UIControlStateNormal];
//        _buttonTwo.tintColor = [UIColor grayColor];
        
        _buttonThree = [[UIButton alloc] init];
        [_buttonThree setImage:[UIImage imageNamed:@"fenxiangfangshi.png"] forState:UIControlStateNormal];
//        _buttonThree.tintColor = [UIColor redColor];
        [self.contentView addSubview:_buttonOne];
        
        [self.contentView addSubview:_buttonTwo];

        [self.contentView addSubview:_buttonThree];
        
        _imageViewOne = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"list_img3.png"]];
        [self.contentView addSubview:_imageViewOne];
    }
    return  self;
}

- (void) layoutSubviews {
    _imageViewOne.frame = CGRectMake(0, 15, 210, 150);
    _labelOne.frame = CGRectMake(235, 35, 120, 20);
    _labelTwo.frame = CGRectMake(235, 57, 120, 20);
    _labelThree.frame = CGRectMake(235, 80, 120, 20);
    _labelFour.frame = CGRectMake(235, 102, 120, 20);
    _buttonOne.frame = CGRectMake(230, 140, 23, 23);
    _labelFive.frame = CGRectMake(260, 143, 40, 20);
    _buttonTwo.frame = CGRectMake(310, 142, 22, 18);
    _labelSix.frame = CGRectMake(340, 143, 40, 20);
    _buttonThree.frame = CGRectMake(370, 140, 23, 23);
    _labelSeven.frame = CGRectMake(400, 143, 40, 20);
}
// 点赞和改变图标 步骤2
- (void)pressButtonOne:(UIButton*)button {
    
    if (_buttonOne.tag == 1) {
        num--;
        _buttonOne.tag = 0;
        NSString* str = [NSString stringWithFormat:@"%d", num];
        _labelFive.text = str;
    } else {
        num++;
        _buttonOne.tag = 1;
        NSString* str = [NSString stringWithFormat:@"%d", num];
        _labelFive.text = str;
    }
    _buttonOne.selected = !_buttonOne.selected;
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
