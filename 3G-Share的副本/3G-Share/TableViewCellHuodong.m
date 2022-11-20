//
//  TableViewCellHuodong.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/28.
//

#import "TableViewCellHuodong.h"

@implementation TableViewCellHuodong

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _imageOne = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"main_img1.png"]];
    _imageTwo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"main_img2.png"]];
    _imageThree = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"main_img3.png"]];
    
    _labelOne = [[UILabel alloc] init];
    _labelOne.text = @"画出自己的风格-设计大赛";
    _labelOne.textColor = [UIColor blackColor];
    _labelOne.font = [UIFont systemFontOfSize:13];
    
    
    _labelTwo = [[UILabel alloc] init];
    _labelTwo.text = @"Share By 阿豹";
    _labelTwo.font = [UIFont systemFontOfSize:13];
    
    _labelThree = [[UILabel alloc] init];
    _labelThree.text = @"平面设计-画册";
    _labelThree.textColor = [UIColor blackColor];
    _labelThree.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_labelOne];
    [self.contentView addSubview:_labelTwo];
    [self.contentView addSubview:_labelThree];
    [self.contentView addSubview:_imageOne];
    [self.contentView addSubview:_imageTwo];
    [self.contentView addSubview:_imageThree];
    
    return self;
}
- (void)layoutSubviews {
    _imageOne.frame = CGRectMake(0, 0, self.frame.size.width, 170);
    _labelOne.frame = CGRectMake(10, 180, 220, 20);
    _imageTwo.frame = CGRectMake(0, 210, self.frame.size.width, 170);
    _labelTwo.frame = CGRectMake(10, 390, 220, 20);
    _imageThree.frame = CGRectMake(0, 420, self.frame.size.width, 170);
    _labelThree.frame = CGRectMake(10, 600, 220, 20);
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
