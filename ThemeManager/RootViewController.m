//
//  RootViewController.m
//  XSThemeManager
//
//  Created by 郭瑞 on 2020/10/7.
//  Copyright © 2020 rui. All rights reserved.
//

#import "RootViewController.h"
#import "XSThemeManager.h"
#import "AppDelegate.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = BG_COLOR;
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"主题色切换" forState:UIControlStateNormal];
    [btn setBackgroundColor:mainColor];
    [btn.titleLabel setFont:[UIFont boldSystemFontOfSize:15]];
    [btn addTarget:self action:@selector(themeBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(10, 40, SCREEN_WIDTH-20, 50);
    [self.view addSubview:btn];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(10, 100, SCREEN_WIDTH-20, 50)];
    view1.backgroundColor = XSMainBlackBGColor;
    [self.view addSubview:view1];
    
    
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(10, 160, SCREEN_WIDTH-20, 50)];
    view2.backgroundColor = XSMainWhitheBGColor;
    [self.view addSubview:view2];
    
    
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(10, 220, SCREEN_WIDTH-20, 50)];
    view3.backgroundColor = mainGrayColor;
    [self.view addSubview:view3];
    
    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(10, 280, SCREEN_WIDTH-20, 50)];
    view4.backgroundColor = XSMainLineColor;
    [self.view addSubview:view4];
    
    
    UIView *view5 = [[UIView alloc] initWithFrame:CGRectMake(10, 340, SCREEN_WIDTH-20, 50)];
    view5.backgroundColor = COLOR_666666;
    [self.view addSubview:view5];
    
    
    UIView *view6 = [[UIView alloc] initWithFrame:CGRectMake(10, 400, SCREEN_WIDTH-20, 50)];
    view6.backgroundColor = JYSMianTextColor;
    [self.view addSubview:view6];
    
    UILabel *textLb = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH-20, 50)];
    textLb.textAlignment = NSTextAlignmentCenter;
    textLb.textColor = XSMainWhitheTextColor;
    textLb.text = @"测试文字颜色";
    [view6 addSubview:textLb];
    
    
    
    //图片
    UIImageView *contactImg = [[UIImageView alloc] initWithFrame:CGRectMake(200, 460, 66, 66)];
    contactImg.image = [UIImage imageNamed:[XSThemeManager getThemeImgName:@"C2C_contact"]];
    [self.view addSubview:contactImg];
    
    
}
//主题色切换
- (void)themeBtnAction:(UIButton *)sender {
    
    NSString *themeType = [[NSUserDefaults standardUserDefaults] objectForKey:XSThemeTypeKey];
    if( themeType.intValue == XSThemeChangeTypeDefault){
        [XSThemeManager shareManager].themeType = XSThemeChangeTypeNight;
    }else{
        [XSThemeManager shareManager].themeType = XSThemeChangeTypeDefault;
        
    }
    //设置tababr颜色
    UITabBarItem * item = [UITabBarItem appearance];
    NSMutableDictionary * attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    //设置选中状态下的显示
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = mainColor;
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    [[UITabBar appearance]setBackgroundImage:[[UIImage alloc]init]];
    [[UITabBar appearance]setBackgroundColor:XSTabbarColor];
    
    [self.view layoutSubviews];
    [self.view layoutIfNeeded];
    //        [[UITabBar appearance] setShadowImage:[UIImage xl_imageWithColor:XSMainLineColor size:CGSizeMake(SCREEN_WIDTH, 0.5)]];
    
    //切换根控制器
    RootViewController *vc = [[RootViewController alloc] init];
    AppDelegate * appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    appDelegate.window.rootViewController = vc;
    
}
@end
