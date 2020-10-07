//
//  XSThemeManager.h
//  XSThemeManager
//
//  Created by 郭瑞 on 2020/10/7.
//  Copyright © 2020 rui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIColor+hexColor.h"
#import "Constants.h"





typedef NS_ENUM(NSInteger, XSThemeChangeType) {
    XSThemeChangeTypeDefault = 0,//默认白色
    XSThemeChangeTypeNight ,//黑色

};


@interface XSThemeManager : NSObject
{
    UIColor * _themeMainColor;//主题色
    UIColor * _themeBGColor;//视图背景色
    
    UIColor * _themeMainTextColor;//主要的文字颜色
    UIColor * _themeSubTitleTextColor;//副主要的文字颜色
    
    UIColor * _themeBlackColor;//主黑色
    UIColor * _themeBlackTextColor;//黑色字体
    UIColor * _themeMainGrayColor;//主灰色
    
    UIColor * _themeWhitheColor;//主白色
    UIColor * _themeWhitheTextColor;//白色字体

    UIColor * _themeNavColor;//主要的导航栏颜色
    UIColor * _themeNavTitleColor;//主要的导航栏文字颜色
    
    UIColor * _themeTabbarColor;//tabbar颜色
    UIColor * _themeTabbarSelectedColor;//tabbar选中颜色
    

    UIColor * _themeButtonNormalColor;//主要按钮颜色
    UIColor * _themeButtonSelectedColor;//主要按钮选中颜色
    UIColor * _themeButtonHighLightColor;//主要按钮高亮颜色
    UIColor * _themeButtonDisableColor;//主要按钮不可用颜色

    UIColor * _themeRedColor;//大盘红色
    UIColor * _themeGreenColor;//大盘绿色
    
    UIColor * _themeLineColor;//分割线颜色

    UIColor * _themeGrayColor6;//灰色666666
    UIColor * _themeGrayColor9;//灰色999999
    
    UIColor * _themeAssetMainTextColor;//资产钱包文字主色调
    UIColor * _themeMCCMainTextColor;//MCC 黑色文字主色调
    UIColor * _themeMCCMainBlueTextColor;//MCC 深蓝色文字主色调
    UIColor * _themeMCCGrayTextColor;//MCC灰色文字主色调
    
    UIColor * _themePlaceholderColor;//placeholder


    

    
    UIColor * _themeWhitheColor1;//白色1
    
    
    //暂未用到的颜色
//    UIColor * _themeWhitheColor2;//白色2
//    UIColor * _themeWhitheColor3;//白色3
//
//
//    UIColor * _themeBlackColor1;//黑色1
//    UIColor * _themeBlackColor2;//黑色2
//    UIColor * _themeBlackColor3;//黑色3

}
@property (nonatomic, assign) XSThemeChangeType themeType;
+ (instancetype)shareManager;
//获取当前主题色
- (XSThemeChangeType)getCurrentThemeType;

//主题色
-(void)setThemeMainColor:(UIColor *)themeMainColor;
-(UIColor *)themeMainColor;

//视图背景色
-(void)setThemeBGColor:(UIColor *)themeBGColor;
-(UIColor *)themeBGColor;

//主要的文字颜色
-(void)setThemeMainTextColor:(UIColor *)themeMainTextColor;
-(UIColor *)themeMainTextColor;

//副主要的文字颜色
-(void)setThemeSubTitleTextColor:(UIColor *)themeSubTitleTextColor;
-(UIColor *)themeSubTitleTextColor;

//主黑色
-(void)setThemeBlackColor:(UIColor *)themeBlackColor;
-(UIColor *)themeBlackColor;

//黑色字体
-(void)setThemeBlackTextColor:(UIColor *)themeBlackTextColor;
-(UIColor *)themeBlackTextColor;

//主灰色
-(void)setThemeMainGrayColor:(UIColor *)themeMainGrayColor;
-(UIColor *)themeMainGrayColor;


//主白色
-(void)setThemeWhitheColor:(UIColor *)themeWhitheColor;
-(UIColor *)themeWhitheColor;
//白色字体
-(void)setThemeWhitheTextColor:(UIColor *)themeWhitheTextColor;
-(UIColor *)themeWhitheTextColor;

//主要的导航栏颜色
-(void)setThemeNavColor:(UIColor *)themeNavColor;
-(UIColor *)themeNavColor;

//主要的导航栏文字颜色
-(void)setThemeNavTitleColor:(UIColor *)themeNavTitleColor;
-(UIColor *)themeNavTitleColor;


//tabbar颜色
-(void)setThemeTabbarColor:(UIColor *)themeTabbarColor;
-(UIColor *)themeTabbarColor;

//tabbar选中颜色
-(void)setThemeTabbarSelectedColor:(UIColor *)themeTabbarSelectedColor;
-(UIColor *)themeTabbarSelectedColor;



//主要按钮颜色
-(void)setThemeButtonNormalColor:(UIColor *)themeButtonNormalColor;
-(UIColor *)themeButtonNormalColor;

//主要按钮选中颜色
-(void)setThemeButtonSelectedColor:(UIColor *)themeButtonSelectedColor;
-(UIColor *)themeButtonSelectedColor;

//主要按钮高亮颜色
-(void)setThemeButtonHighLightColor:(UIColor *)themeButtonHighLightColor;
-(UIColor *)themeButtonHighLightColor;

//主要按钮不可用颜色
-(void)setThemeButtonDisableColor:(UIColor *)themeButtonDisableColor;
-(UIColor *)themeButtonDisableColor;

//大盘红色
-(void)setThemeRedColor:(UIColor *)themeRedColor;
-(UIColor *)themeRedColor;
//大盘绿色
-(void)setThemeGreenColor:(UIColor *)themeGreenColor;
-(UIColor *)themeGreenColor;


//分割线颜色
-(void)setThemeLineColor:(UIColor *)themeLineColor;
-(UIColor *)themeLineColor;

//灰色666666
-(void)setThemeGrayColor6:(UIColor *)themeGrayColor6;
-(UIColor *)themeGrayColor6;

//灰色999999
-(void)setThemeGrayColor9:(UIColor *)themeGrayColor9;
-(UIColor *)themeGrayColor9;

//资产钱包文字 主色调
-(void)setThemeAssetMainTextColor:(UIColor *)themeAssetMainTextColor;
-(UIColor *)themeAssetMainTextColor;

//MCC 黑色的文字黑色调
-(void)setThemeMCCMainTextColor:(UIColor *)themeMCCMainTextColor;
-(UIColor *)themeMCCMainTextColor;

//MCC 深蓝色的文字主色调
-(void)setThemeMCCMainBlueTextColor:(UIColor *)themeMCCMainBlueTextColor;
-(UIColor *)themeMCCMainBlueTextColor;

//MCC 灰色文字色调
-(void)setThemeMCCGrayTextColor:(UIColor *)themeMCCGrayTextColor;
-(UIColor *)themeMCCGrayTextColor;

///placeholder
-(void)setThemePlaceholderColor:(UIColor *)themePlaceholderColor;
-(UIColor *)themePlaceholderColor;



//白色1
-(void)setThemeWhitheColor1:(UIColor *)themeWhitheColor1;
-(UIColor *)themeWhitheColor1;

////白色2
//-(void)setThemeWhitheColor2:(UIColor *)themeWhitheColor2;
//-(UIColor *)themeWhitheColor2;
//
////白色3
//-(void)setThemeWhitheColor3:(UIColor *)themeWhitheColor3;
//-(UIColor *)themeWhitheColor3;
//
//
//
////黑色1
//-(void)setThemeBlackColor1:(UIColor *)themeBlackColor1;
//-(UIColor *)themeBlackColor1;
//
////黑色2
//-(void)setThemeBlackColor2:(UIColor *)themeBlackColor2;
//-(UIColor *)themeBlackColor2;
//
////黑色3
//-(void)setThemeBlackColor3:(UIColor *)themeBlackColor3;
//-(UIColor *)themeBlackColor3;


// 颜色 转字符串（16进制）
-(NSString*)toStrByUIColor:(UIColor*)color;

//获取主题色图片
+ (NSString*)getThemeImgName:(NSString *)imageStr;

@end

