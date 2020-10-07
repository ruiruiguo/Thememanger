//
//  Constants.h
//  XSThemeManager
//
//  Created by 郭瑞 on 2020/10/7.
//  Copyright © 2020 rui. All rights reserved.
//

#ifndef Constants_h
#define Constants_h



#define isNull(x)             (!x || [x isKindOfClass:[NSNull class]])
#define isEmptyString(x)      (isNull(x) || [x isEqual:@""] || [x isEqual:@"(null)"] || [x isEqual:@"null"]|| [x isEqual:@"<null>"])

#define UserDefaults [NSUserDefaults standardUserDefaults]

#define Color(colorStr)           [UIColor hexFloatColor:colorStr]


//宽 高

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
//主题色
#define XSThemeTypeKey @"XSThemeTypeKey"



#define JYSMainSelelctColor      [XSThemeManager shareManager].themeTabbarSelectedColor //E70101

//主色
#define mainColor          [XSThemeManager shareManager].themeMainColor //0090ff
//背景色
#define BG_COLOR           [XSThemeManager shareManager].themeBGColor //f4f4f4

//灰色主色调
#define mainGrayColor      [XSThemeManager shareManager].themeMainGrayColor //828282

//灰色主色调2_SubTitle
#define XSMainGraySubTitleColor      [XSThemeManager shareManager].themeSubTitleTextColor //909EAB

//tabbar颜色
#define XSTabbarColor      [XSThemeManager shareManager].themeTabbarColor

//主要文字颜色
#define JYSMianTextColor   [XSThemeManager shareManager].themeMainTextColor//111111
//资产钱包 文字主色
#define BLMianTextColor    [XSThemeManager shareManager].themeAssetMainTextColor //1B3047
//MCC灰色文字主色调
#define MCC_GrayText_COLOR [XSThemeManager shareManager].themeMCCGrayTextColor //9197A9
//MCC黑色文字主色调
#define MCC_MainText_COLOR [XSThemeManager shareManager].themeMCCMainTextColor//222222
//MCC深蓝色文字主色调
#define MCC_MainBlueText_COLOR [XSThemeManager shareManager].themeMCCMainBlueTextColor//2D3A5E

//分割线颜色
#define XSMainLineColor    [XSThemeManager shareManager].themeLineColor //e6e6e6
//黑色
#define XSMainBlackBGColor   [XSThemeManager shareManager].themeBlackColor //000000
//黑色字体
#define XSMainBlackTextColor   [XSThemeManager shareManager].themeBlackColor //000000
//白色
#define XSMainWhitheBGColor  [XSThemeManager shareManager].themeWhitheColor //ffffff
//白色1
#define XSMainWhithe1Color  [XSThemeManager shareManager].themeWhitheColor1 //f9f9f9
//白色字体
#define XSMainWhitheTextColor  [XSThemeManager shareManager].themeWhitheTextColor //ffffff

//大盘红色
#define JYSRedColor            [XSThemeManager shareManager].themeRedColor//F95453
//大盘绿色
#define JYSGreenColor          [XSThemeManager shareManager].themeGreenColor//00BF84

//按钮高亮颜色
#define XSMainButtonHighLightColor [XSThemeManager shareManager].themeButtonHighLightColor//cfcfcf
//按钮选中颜色
#define XSMainButtonDisableColor [XSThemeManager shareManager].themeButtonDisableColor
//导航栏颜色
#define XSMainNavColor      [XSThemeManager shareManager].themeNavColor
//导航栏文字
#define XSMainNavTitleColor      [XSThemeManager shareManager].themeNavTitleColor
#define XSMainPlaceholderColor      [XSThemeManager shareManager].themePlaceholderColor

//666666
#define COLOR_666666    [XSThemeManager shareManager].themeGrayColor6
//999999
#define COLOR_999999    [XSThemeManager shareManager].themeGrayColor9



#endif /* Constants_h */
