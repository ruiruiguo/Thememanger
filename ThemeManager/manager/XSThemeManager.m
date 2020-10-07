//
//  XSThemeManager.m
//  XSThemeManager
//
//  Created by 郭瑞 on 2020/10/7.
//  Copyright © 2020 rui. All rights reserved.
//


#import "XSThemeManager.h"


@interface XSThemeManager ()


@end

@implementation XSThemeManager


+ (instancetype)shareManager {
    static XSThemeManager *_instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[XSThemeManager alloc] init];

    });
    
    return _instance;
}
- (XSThemeChangeType)getCurrentThemeType{
    NSString *themeTypeKey = [[NSUserDefaults standardUserDefaults] objectForKey:XSThemeTypeKey];
    if(isEmptyString(themeTypeKey)){
        themeTypeKey = @"0";
    }
    return themeTypeKey.intValue;
}


-(void)setThemeType:(XSThemeChangeType)themeType
{
    _themeType = themeType;
    switch (themeType) {
        case XSThemeChangeTypeDefault:
            {
                [UserDefaults setObject:@"0" forKey:XSThemeTypeKey];
                [XSThemeManager shareManager].themeMainColor = Color(@"E70101");//主题色
                [XSThemeManager shareManager].themeBGColor = Color(@"f4f4f4");//视图背景色
                [XSThemeManager shareManager].themeMainTextColor = Color(@"111111");//主要的文字颜色
                [XSThemeManager shareManager].themeSubTitleTextColor = Color(@"909EAB");//副主要的文字颜色
                
                [XSThemeManager shareManager].themeBlackColor = Color(@"000000"); //主黑色
                [XSThemeManager shareManager].themeBlackTextColor = Color(@"000000"); //主黑色
                [XSThemeManager shareManager].themeMainGrayColor = Color(@"828282"); //主灰色
                [XSThemeManager shareManager].themeWhitheColor = Color(@"ffffff"); //主白色
                [XSThemeManager shareManager].themeWhitheTextColor = Color(@"ffffff"); //白色字体
                
                [XSThemeManager shareManager].themeNavColor = Color(@"ffffff"); //主要的导航栏颜色
                [XSThemeManager shareManager].themeNavTitleColor = Color(@"ffffff"); //主要的导航栏文字颜色
                
                [XSThemeManager shareManager].themeTabbarColor = Color(@"ffffff"); //tabbar颜色
                [XSThemeManager shareManager].themeTabbarSelectedColor = Color(@"E70101"); //tabbar选中颜色
                
                [XSThemeManager shareManager].themeButtonNormalColor = Color(@"E70101"); //主要按钮颜色
                [XSThemeManager shareManager].themeButtonSelectedColor = Color(@"E70101"); //主要按钮选中颜色
                [XSThemeManager shareManager].themeButtonHighLightColor = Color(@"cfcfcf"); //主要按钮高亮颜色
                [XSThemeManager shareManager].themeButtonDisableColor = Color(@"C6A5A5"); //主要按钮不可用颜色

                [XSThemeManager shareManager].themeRedColor = Color(@"F95453"); //大盘红色
                [XSThemeManager shareManager].themeGreenColor = Color(@"00BF84"); //大盘绿色
                [XSThemeManager shareManager].themeLineColor = Color(@"e6e6e6"); //分割线颜色
                [XSThemeManager shareManager].themeGrayColor6 = Color(@"666666"); //灰色666666
                [XSThemeManager shareManager].themeGrayColor9 = Color(@"999999"); //灰色999999

                [XSThemeManager shareManager].themeAssetMainTextColor = Color(@"1B3047"); //资产钱包文字 主色调
                [XSThemeManager shareManager].themeMCCGrayTextColor = Color(@"9197A9"); //MCC 灰色文字黑色调
                [XSThemeManager shareManager].themeMCCMainTextColor = Color(@"222222"); //MCC 的文字黑色调
                [XSThemeManager shareManager].themeMCCMainBlueTextColor = Color(@"2D3A5E"); //MCC 的文字深蓝色调
                [XSThemeManager shareManager].themePlaceholderColor = Color(@"C4C4C4"); //placeholder

                
                [XSThemeManager shareManager].themeGrayColor6 = Color(@"666666"); //灰色666666
                [XSThemeManager shareManager].themeGrayColor9 = Color(@"999999"); //灰色999999
                [XSThemeManager shareManager].themeWhitheColor1 = Color(@"F9F9FC"); //白色1
            }
            break;
        case XSThemeChangeTypeNight:
        {
            [UserDefaults setObject:@"1" forKey:XSThemeTypeKey];
            [XSThemeManager shareManager].themeMainColor = Color(@"EBC15F");//主题色
            [XSThemeManager shareManager].themeBGColor = Color(@"222222");//视图背景色
            [XSThemeManager shareManager].themeMainTextColor = Color(@"FDFDFD");//主要的文字颜色
            [XSThemeManager shareManager].themeSubTitleTextColor = Color(@"909EAB");//副主要的文字颜色
            [XSThemeManager shareManager].themeBlackColor = Color(@"ffffff"); //主黑色
            [XSThemeManager shareManager].themeBlackTextColor = Color(@"ffffff"); //主黑色
            [XSThemeManager shareManager].themeMainGrayColor = Color(@"828282"); //主灰色
            [XSThemeManager shareManager].themeWhitheColor = Color(@"2A2A2A"); //主白色
            [XSThemeManager shareManager].themeWhitheTextColor = Color(@"111111"); //白色字体
            [XSThemeManager shareManager].themeNavColor = Color(@"2A2A2A"); //主要的导航栏颜色
            [XSThemeManager shareManager].themeNavTitleColor = Color(@"222222"); //主要的导航栏文字颜色
            [XSThemeManager shareManager].themeTabbarColor = Color(@"2A2A2A"); //tabbar颜色
            [XSThemeManager shareManager].themeTabbarSelectedColor = Color(@"EBC15F"); //tabbar选中颜色
            [XSThemeManager shareManager].themeButtonNormalColor = Color(@"EBC15F"); //主要按钮颜色
            [XSThemeManager shareManager].themeButtonSelectedColor = Color(@"EBC15F"); //主要按钮选中颜色
            [XSThemeManager shareManager].themeButtonHighLightColor = Color(@"cfcfcf"); //主要按钮高亮颜色
            [XSThemeManager shareManager].themeButtonDisableColor = Color(@"828282"); //主要按钮不可用颜色

            [XSThemeManager shareManager].themeRedColor = Color(@"F95453"); //大盘红色
            [XSThemeManager shareManager].themeGreenColor = Color(@"00BF84"); //大盘绿色
            [XSThemeManager shareManager].themeLineColor = Color(@"333333"); //分割线颜色
            [XSThemeManager shareManager].themeGrayColor6 = Color(@"666666"); //灰色666666
            [XSThemeManager shareManager].themeGrayColor9 = Color(@"999999"); //灰色999999

            [XSThemeManager shareManager].themeAssetMainTextColor = Color(@"DDDDDD"); //资产钱包文字 主色调
            [XSThemeManager shareManager].themeMCCGrayTextColor = Color(@"9197A9"); //MCC 灰色文字黑色调
            [XSThemeManager shareManager].themeMCCMainTextColor = Color(@"FDFDFD"); //MCC 的文字黑色调
            [XSThemeManager shareManager].themeMCCMainBlueTextColor = Color(@"CCCCCC"); //MCC 的文字深蓝色调
            [XSThemeManager shareManager].themePlaceholderColor = Color(@"515151"); //placeholder
            [XSThemeManager shareManager].themeGrayColor6 = Color(@"666666"); //灰色666666
            [XSThemeManager shareManager].themeGrayColor9 = Color(@"999999"); //灰色999999
            [XSThemeManager shareManager].themeWhitheColor1 = Color(@"555555"); //白色1

        }
            break;

    }

}



#pragma mark 主色调
//设置主题色
-(void)setThemeMainColor:(UIColor *)themeMainColor
{
    _themeMainColor = themeMainColor;
    [self saveColor:themeMainColor Key:@"themeMainColor"];
}
//获取主题色
-(UIColor *)themeMainColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeMainColor"];
    return  getColor?getColor:Color(@"E70101");//默认颜色

}


#pragma mark 视图背景色
-(void)setThemeBGColor:(UIColor *)themeBGColor
{
    _themeBGColor = themeBGColor;
    [self saveColor:themeBGColor Key:@"themeBGColor"];
}
-(UIColor *)themeBGColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeBGColor"];
    return  getColor?getColor:Color(@"f4f4f4");

}

#pragma mark   主要的文字颜色
-(void)setThemeMainTextColor:(UIColor *)themeMainTextColor
{
    _themeMainTextColor = themeMainTextColor;
    [self saveColor:themeMainTextColor Key:@"themeMainTextColor"];
}
-(UIColor *)themeMainTextColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeMainTextColor"];
    return  getColor?getColor:Color(@"111111");
    
}

#pragma mark   副主要的文字颜色
-(void)setThemeSubTitleTextColor:(UIColor *)themeSubTitleTextColor
{
    _themeSubTitleTextColor = themeSubTitleTextColor;
    [self saveColor:themeSubTitleTextColor Key:@"themeSubTitleTextColor"];
}
-(UIColor *)themeSubTitleTextColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeSubTitleTextColor"];
    return  getColor?getColor:Color(@"9197a9");
    
}

#pragma mark   主黑色
-(void)setThemeBlackColor:(UIColor *)themeBlackColor
{
    _themeBlackColor = themeBlackColor;
    [self saveColor:themeBlackColor Key:@"themeBlackColor"];
}
-(UIColor *)themeBlackColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeBlackColor"];
    return  getColor?getColor:Color(@"000000");
    
}
#pragma mark   黑色字体
-(void)setThemeBlackTextColor:(UIColor *)themeBlackTextColor
{
    _themeBlackTextColor = themeBlackTextColor;
    [self saveColor:themeBlackTextColor Key:@"themeBlackTextColor"];
}
-(UIColor *)themeBlackTextColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeBlackTextColor"];
    return  getColor?getColor:Color(@"000000");
    
}
#pragma mark   主灰色
-(void)setThemeMainGrayColor:(UIColor *)themeMainGrayColor
{
    _themeMainGrayColor = themeMainGrayColor;
    [self saveColor:themeMainGrayColor Key:@"themeMainGrayColor"];
}
-(UIColor *)themeMainGrayColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeMainGrayColor"];
    return  getColor?getColor:Color(@"828282");
    
}

#pragma mark   主白色
-(void)setThemeWhitheColor:(UIColor *)themeWhitheColor
{
    _themeWhitheColor = themeWhitheColor;
    [self saveColor:themeWhitheColor Key:@"themeWhitheColor"];
}
-(UIColor *)themeWhitheColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeWhitheColor"];
    return  getColor?getColor:[UIColor whiteColor];
    
}


#pragma mark   白色字体
-(void)setThemeWhitheTextColor:(UIColor *)themeWhitheTextColor
{
    _themeWhitheTextColor = themeWhitheTextColor;
    [self saveColor:themeWhitheTextColor Key:@"themeWhitheTextColor"];
}
-(UIColor *)themeWhitheTextColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeWhitheTextColor"];
    return  getColor?getColor:[UIColor whiteColor];
    
}

#pragma mark   主要的导航栏颜色
-(void)setThemeNavColor:(UIColor *)themeNavColor
{
    _themeNavColor = themeNavColor;
    [self saveColor:themeNavColor Key:@"themeNavColor"];
}
-(UIColor *)themeNavColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeNavColor"];
    return  getColor?getColor:Color(@"E70101");
    
}

#pragma mark   主要的导航栏文字颜色
-(void)setThemeNavTitleColor:(UIColor *)themeNavTitleColor
{
    _themeNavTitleColor = themeNavTitleColor;
    [self saveColor:themeNavTitleColor Key:@"themeNavTitleColor"];
}
-(UIColor *)themeNavTitleColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeNavTitleColor"];
    return  getColor?getColor:Color(@"ffffff");
    
}


#pragma mark   tabbar颜色
-(void)setThemeTabbarColor:(UIColor *)themeTabbarColor
{
    _themeTabbarColor = themeTabbarColor;
    [self saveColor:themeTabbarColor Key:@"themeTabbarColor"];
}
-(UIColor *)themeTabbarColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeTabbarColor"];
    return  getColor?getColor:Color(@"ffffff");
    
}

#pragma mark   tabbar选中颜色
-(void)setThemeTabbarSelectedColor:(UIColor *)themeTabbarSelectedColor
{
    _themeTabbarSelectedColor = themeTabbarSelectedColor;
    [self saveColor:themeTabbarSelectedColor Key:@"themeTabbarSelectedColor"];
}
-(UIColor *)themeTabbarSelectedColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeTabbarSelectedColor"];
    return  getColor?getColor:Color(@"E70101");
    
}



#pragma mark   主要按钮颜色
-(void)setThemeButtonNormalColor:(UIColor *)themeButtonNormalColor
{
    _themeButtonNormalColor = themeButtonNormalColor;
    [self saveColor:themeButtonNormalColor Key:@"themeButtonNormalColor"];
}
-(UIColor *)themeButtonNormalColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeButtonNormalColor"];
    return  getColor?getColor:Color(@"E70101");
    
}

#pragma mark   主要按钮选中颜色
-(void)setThemeButtonSelectedColor:(UIColor *)themeButtonSelectedColor
{
    _themeButtonSelectedColor = themeButtonSelectedColor;
    [self saveColor:themeButtonSelectedColor Key:@"themeButtonSelectedColor"];
}
-(UIColor *)themeButtonSelectedColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeButtonSelectedColor"];
    return  getColor?getColor:Color(@"E70101");
    
}

#pragma mark   主要按钮高亮颜色
-(void)setThemeButtonHighLightColor:(UIColor *)themeButtonHighLightColor
{
    _themeButtonHighLightColor = themeButtonHighLightColor;
    [self saveColor:themeButtonHighLightColor Key:@"themeButtonHighLightColor"];
}
-(UIColor *)themeButtonHighLightColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeButtonHighLightColor"];
    return  getColor?getColor:Color(@"cfcfcf");
    
}

#pragma mark   主要按钮不可用颜色
-(void)setThemeButtonDisableColor:(UIColor *)themeButtonDisableColor
{
    _themeButtonDisableColor = themeButtonDisableColor;
    [self saveColor:themeButtonDisableColor Key:@"themeButtonDisableColor"];
}
-(UIColor *)themeButtonDisableColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeButtonDisableColor"];
    return  getColor?getColor:Color(@"cfcfcf");//C6A5A5
    
}

#pragma mark   大盘红色
-(void)setThemeRedColor:(UIColor *)themeRedColor
{
    _themeRedColor = themeRedColor;
    [self saveColor:themeRedColor Key:@"themeRedColor"];
}
-(UIColor *)themeRedColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeRedColor"];
    return  getColor?getColor:Color(@"F95453");
    
}

#pragma mark   大盘绿色
-(void)setThemeGreenColor:(UIColor *)themeGreenColor
{
    _themeGreenColor = themeGreenColor;
    [self saveColor:themeGreenColor Key:@"themeGreenColor"];
}
-(UIColor *)themeGreenColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeGreenColor"];
    return  getColor?getColor:Color(@"00BF84");
    
}


#pragma mark   分割线颜色
-(void)setThemeLineColor:(UIColor *)themeLineColor
{
    _themeLineColor = themeLineColor;
    [self saveColor:themeLineColor Key:@"themeLineColor"];
}
-(UIColor *)themeLineColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeLineColor"];
    return  getColor?getColor:Color(@"e6e6e6");
    
}

#pragma mark   灰色666666
-(void)setThemeGrayColor6:(UIColor *)themeGrayColor6
{
    _themeGrayColor6 = themeGrayColor6;
    [self saveColor:themeGrayColor6 Key:@"themeGrayColor6"];
}
-(UIColor *)themeGrayColor6
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeGrayColor6"];
    return  getColor?getColor:Color(@"666666");
    
}

#pragma mark   灰色999999
-(void)setThemeGrayColor9:(UIColor *)themeGrayColor9
{
    _themeGrayColor9 = themeGrayColor9;
    [self saveColor:themeGrayColor9 Key:@"themeGrayColor9"];
}
-(UIColor *)themeGrayColor9
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeGrayColor9"];
    return  getColor?getColor:Color(@"999999");
    
}


#pragma mark  资产钱包文字 主色调
-(void)setThemeAssetMainTextColor:(UIColor *)themeAssetMainTextColor
{
    _themeAssetMainTextColor = themeAssetMainTextColor;
    [self saveColor:themeAssetMainTextColor Key:@"themeAssetMainTextColor"];
}
-(UIColor *)themeAssetMainTextColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeAssetMainTextColor"];
    return  getColor?getColor:Color(@"1B3047");
}


#pragma mark MCC 黑色的文字主色调
-(void)setThemeMCCMainTextColor:(UIColor *)themeMCCMainTextColor
{
    _themeMCCMainTextColor = themeMCCMainTextColor;
    [self saveColor:themeMCCMainTextColor Key:@"themeMCCMainTextColor"];
}
-(UIColor *)themeMCCMainTextColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeMCCMainTextColor"];
    return  getColor?getColor:Color(@"111111");
}


#pragma mark  MCC 深蓝色的文字主色调
-(void)setThemeMCCMainBlueTextColor:(UIColor *)themeMCCMainBlueTextColor
{
    _themeMCCMainBlueTextColor = themeMCCMainBlueTextColor;
    [self saveColor:themeMCCMainBlueTextColor Key:@"themeMCCMainBlueTextColor"];
}
-(UIColor *)themeMCCMainBlueTextColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeMCCMainBlueTextColor"];
    return  getColor?getColor:Color(@"2D3A5E");
}
#pragma mark MCC 灰色文字黑色调
-(void)setThemeMCCGrayTextColor:(UIColor *)themeMCCGrayTextColor
{
    _themeMCCGrayTextColor = themeMCCGrayTextColor;
    [self saveColor:themeMCCGrayTextColor Key:@"themeMCCGrayTextColor"];
}
-(UIColor *)themeMCCGrayTextColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeMCCGrayTextColor"];
    return  getColor?getColor:Color(@"9197A9");
}


#pragma mark  placeholder
-(void)setThemePlaceholderColor:(UIColor *)themePlaceholderColor
{
    _themePlaceholderColor = themePlaceholderColor;
    [self saveColor:themePlaceholderColor Key:@"themePlaceholderColor"];
}
-(UIColor *)themePlaceholderColor
{
    UIColor *getColor = [self getSaveColorWithKey:@"themePlaceholderColor"];
    return  getColor?getColor:Color(@"C4C4C4");
    
}




#pragma mark   白色1
-(void)setThemeWhitheColor1:(UIColor *)themeWhitheColor1
{
    _themeWhitheColor1 = themeWhitheColor1;
    [self saveColor:themeWhitheColor1 Key:@"themeWhitheColor1"];
}
-(UIColor *)themeWhitheColor1
{
    UIColor *getColor = [self getSaveColorWithKey:@"themeWhitheColor1"];
    return  getColor?getColor:Color(@"F9F9FC");
    
}

//#pragma mark   白色2
//-(void)setThemeWhitheColor2:(UIColor *)themeWhitheColor2
//{
//    _themeWhitheColor2 = themeWhitheColor2;
//    [self saveColor:themeWhitheColor2 Key:@"themeWhitheColor2"];
//}
//-(UIColor *)themeWhitheColor2
//{
//    UIColor *getColor = [self getSaveColorWithKey:@"themeWhitheColor2"];
//    return  getColor?getColor:Color(@"f6f6f6");
//
//}
//
//#pragma mark   白色3
//-(void)setThemeWhitheColor3:(UIColor *)themeWhitheColor3
//{
//    _themeWhitheColor3 = themeWhitheColor3;
//    [self saveColor:themeWhitheColor3 Key:@"themeWhitheColor3"];
//}
//-(UIColor *)themeWhitheColor3
//{
//    UIColor *getColor = [self getSaveColorWithKey:@"themeWhitheColor3"];
//    return  getColor?getColor:Color(@"f8f8f8");
//}
//
//
//#pragma mark   黑色1
//-(void)setThemeBlackColor1:(UIColor *)themeBlackColor1
//{
//    _themeBlackColor1 = themeBlackColor1;
//    [self saveColor:themeBlackColor1 Key:@"themeBlackColor1"];
//}
//-(UIColor *)themeBlackColor1
//{
//    UIColor *getColor = [self getSaveColorWithKey:@"themeBlackColor1"];
//    return  getColor?getColor:Color(@"111111");
//
//}
//#pragma mark   黑色2
//-(void)setThemeBlackColor2:(UIColor *)themeBlackColor2
//{
//    _themeBlackColor2 = themeBlackColor2;
//    [self saveColor:themeBlackColor2 Key:@"themeBlackColor2"];
//}
//-(UIColor *)themeBlackColor2
//{
//    UIColor *getColor = [self getSaveColorWithKey:@"themeBlackColor2"];
//    return  getColor?getColor:Color(@"222222");
//
//}
//
//#pragma mark   黑色3
//-(void)setThemeBlackColor3:(UIColor *)themeBlackColor3
//{
//    _themeBlackColor3 = themeBlackColor3;
//    [self saveColor:themeBlackColor3 Key:@"themeBlackColor3"];
//}
//-(UIColor *)themeBlackColor3
//{
//    UIColor *getColor = [self getSaveColorWithKey:@"themeBlackColor3"];
//    return  getColor?getColor:Color(@"666666");
//
//}





//将颜色存入本地，当下次进入时保持该种状态
- (void)saveColor:(UIColor *)color Key:(NSString *)key
{
    NSString *colorStr = [self toStrByUIColor:color];
    [UserDefaults setObject:colorStr forKey:key];
}

//获取存入的颜色色
- (UIColor *)getSaveColorWithKey:(NSString *)key
{
    if ([UserDefaults objectForKey:key]) {
        UIColor *color = [self toUIColorByStr:[UserDefaults objectForKey:key]];
        return color;
    }
    return nil;
}

// 颜色 字符串转16进制
-(UIColor*)toUIColorByStr:(NSString*)colorStr{
    
    NSString *cString = [[colorStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor blackColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

// 颜色 转字符串（16进制）
-(NSString*)toStrByUIColor:(UIColor*)color{
    CGFloat r, g, b, a;
    [color getRed:&r green:&g blue:&b alpha:&a];
    int rgb = (int) (r * 255.0f)<<16 | (int) (g * 255.0f)<<8 | (int) (b * 255.0f)<<0;
    return [NSString stringWithFormat:@"%06x", rgb];
}


+ (NSString*)getThemeImgName:(NSString *)imageStr
{
    NSString *themeTypeKey = [[NSUserDefaults standardUserDefaults] objectForKey:XSThemeTypeKey];
    if (isEmptyString(themeTypeKey)) {
        return imageStr;
    }
    NSString *themeImgName =  [NSString stringWithFormat:@"%@_%d",imageStr,themeTypeKey.intValue];
    return themeImgName;
}



@end
