//
//  ViewControllerImage.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol buttonImageDelegate <NSObject>

- (void)changeImage: (NSString*) str1;
- (void)returnNumber: (int*) num1;

@end

@interface ViewControllerImage : UIViewController
@property (nonatomic, strong)UIButton *buttonImageOne;
@property (nonatomic, strong)UIButton *buttonImageTwo;
@property (nonatomic, strong)UIButton *buttonImageThree;
@property (nonatomic, strong)UIButton *buttonImageFour;
@property (nonatomic, strong)UIButton *buttonImage5;
@property (nonatomic, strong)UIButton *buttonImage6;
@property (nonatomic, strong)UIButton *buttonImage8;
@property (nonatomic, strong)UIButton *buttonImage7;
@property (nonatomic, strong) id<buttonImageDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
