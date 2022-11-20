//
//  ViewControllerDownLoad.h
//  3G-Share
//
//  Created by 李育腾 on 2022/7/27.
//

#import <UIKit/UIKit.h>
#import "ViewControllerImage.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerDownLoad : UIViewController<UITableViewDelegate, UITableViewDataSource, buttonImageDelegate>
- (void)changeImage: (NSString*) str1;
- (void)returnNumber:(int )num1;
@property(nonatomic, strong)UIButton* buttonImage;
@property(nonatomic, strong)UIImageView* imageViewSet;
@property(nonatomic, strong)UIButton* buttonSet;
@property(nonatomic, strong)UIButton* buttonYuan;
@property(nonatomic, strong)UITableView* tableView;

@property(nonatomic, strong)UITextField* textFieldUserName;
@property(nonatomic, strong)UITextField* textFieldNr;
@property(nonatomic, strong)UIButton* buttonSend;
@property(nonatomic, strong)UIButton* buttonNo;
@property(nonatomic, strong)UILabel* label;
@property(nonatomic, strong)UILabel* labelNumber;
@property (nonatomic, strong) UITableView* foldTableView;
@property (nonatomic, strong) NSMutableArray* foldArray;
@property (nonatomic, strong) UIButton* foldButton;


@property(nonatomic, strong) UIButton* buttonOne;
@property(nonatomic, strong) UIButton* buttonTwo;
@property(nonatomic, strong) UIButton* buttonThree;
@property(nonatomic, strong) UIButton* buttonFour;
@property(nonatomic, strong) UIButton* buttonFive;
@property(nonatomic, strong) UIButton* buttonSix;
@property(nonatomic, strong) UIButton* buttonSeven;
@property(nonatomic, strong) UIButton* buttonEight;
@property(nonatomic, strong) UIButton* buttonNine;
@property(nonatomic, strong) UIImageView* imageBiaoqian;



@end

NS_ASSUME_NONNULL_END
