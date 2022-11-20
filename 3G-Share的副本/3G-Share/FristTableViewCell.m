//
//  FristTableViewCell.m
//  3G-Share
//
//  Created by 李育腾 on 2022/7/25.
//

#import "FristTableViewCell.h"
#define width [UIScreen mainScreen].bounds.size.width
#define height [UIScreen mainScreen].bounds.size.height


@implementation FristTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.scrollview = [[UIScrollView alloc] init];
    [self.contentView addSubview:_scrollview];
    _scrollview.tag = 0;
    
    self.pageControl = [[UIPageControl alloc] init];
    _pageControl.numberOfPages = 4;
    _pageControl.currentPage = 0;
    _pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
    [self.contentView addSubview:_pageControl];

    
    UIImageView *fristView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"main_img4.png"]];
    fristView.frame = CGRectMake(0, 0, width, 200);
    [self.scrollview addSubview: fristView];
    for (int i = 0; i < 4; i++) {
        NSString *str1 = [NSString stringWithFormat:@"main_img%d.png",i + 1];
        UIImageView *Firstimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed: str1]];
        Firstimage.frame = CGRectMake(0 + width * (i + 1), 0, width, 200);
        [self.scrollview addSubview: Firstimage];
    }
    UIImageView *lastView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"main_img1.png"]];
    lastView.frame = CGRectMake(width * 5, 0, width, 200);
    [self.scrollview addSubview: lastView];
    
    
    _myTimer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(timeOut:) userInfo:nil repeats:YES];
    return self;
    
}

- (void)layoutSubviews {
    _pageControl.frame = CGRectMake(70, 160, 300, 50);
    self.scrollview.frame = CGRectMake(0, 0, width, 200);
    self.scrollview.pagingEnabled = YES;
    self.scrollview.scrollEnabled = YES;
    self.scrollview.contentSize = CGSizeMake(width * 6, 80);
    self.scrollview.bounces = YES;
    self.scrollview.alwaysBounceHorizontal = NO;
    self.scrollview.alwaysBounceVertical = NO;
    self.scrollview.showsHorizontalScrollIndicator = NO;
    self.scrollview.delegate = self;
    //self.scrollview.backgroundColor = [UIColor yellowColor];
    
    
if (_scrollview.tag == 0)
    [_scrollview setContentOffset:CGPointMake(width, 0) animated:NO];
    _scrollview.tag = 1;
}


//当scrollView停止滚动之后调用此方法
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    if (scrollView.tag == 1) {
        //计算偏移量所对应的页数
        int page = _scrollview.contentOffset.x / width;
        if (page == 5) {
            _scrollview.contentOffset = CGPointMake(width * 1, 0);
            _pageControl.currentPage = 0;
        } else if (page == 0) {
            _scrollview.contentOffset = CGPointMake(width * 4, 0);
            _pageControl.currentPage = 4;
        } else {
            _pageControl.currentPage = page - 1;
        }
    }
}
- (void)timeOut:(NSTimer*)timer {
    if (_scrollview.contentOffset.x >= width * 4) {
        [_scrollview setContentOffset:CGPointMake(width, 0) animated:NO];
    } else {
        [_scrollview setContentOffset:CGPointMake(_scrollview.contentOffset.x + width, 0) animated:YES];
    }
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    if (scrollView.tag == 1) {
        [_myTimer invalidate];
        _myTimer = nil;
    }
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if (scrollView.tag == 1) {
        _myTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timeOut:) userInfo:nil repeats:YES];
    }
}
/*- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    if (scrollView.tag == 111) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timeOut:) userInfo:self repeats:YES];
    }
}*/

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.tag == 1) {
        if (_scrollview.contentOffset.x > width * 5) {
            _scrollview.contentOffset = CGPointMake(0, 0);
        } else if (_scrollview.contentOffset.x < width) {
            _scrollview.contentOffset = CGPointMake(width * 4, 0);
        }
        _pageControl.currentPage = (_scrollview.contentOffset.x) / width - 1;
    }
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
