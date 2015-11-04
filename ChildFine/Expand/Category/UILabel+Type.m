//
//  UILabel+Type.m
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "UILabel+Type.h"

@implementation UILabel (Type)

- (void)familyLableSmallfontAndGrayColor {
    self.textColor = RGBA(177, 177, 177, 1);
    self.font = [UIFont boldSystemFontOfSize:11];
}
- (void)setAttributedStringLinesSpaceWithString:(NSString *)string space:(NSInteger)space{
   
    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:string];
    //设置行间距
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:space];
    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [string length])];
   
    //设置不同的字体
    [attributedString1 addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Arial" size:18.0] range:NSMakeRange(0, string.length-2)];
    [self setAttributedText:attributedString1];
    self.textAlignment = NSTextAlignmentCenter;
     //[_flowerLab sizeToFit];
    
}
+ (UILabel *)FamilyLableBigFontWithFrame:(CGRect)frame {
    UILabel *lable = [self FamilyInitlableWithFrame:frame];
    lable.font = [UIFont fontWithName:@"HiraKakuProN-W6" size:15];
    return lable;
}

+ (UILabel *)FamilyLableMiddleFontWithFrame:(CGRect)frame {
    UILabel *lable = [self FamilyInitlableWithFrame:frame];
    lable.font = [UIFont fontWithName:@"HiraKakuProN-W6" size:14];
    return lable;
}

+ (UILabel *)FamilyLableSmallFontWithFrame:(CGRect)frame {
    UILabel *lable = [self FamilyInitlableWithFrame:frame];
    lable.font = [UIFont fontWithName:@"HiraKakuProN-W6" size:11];
    return lable;
}

#pragma -init
+ (UILabel *)FamilyInitlableWithFrame:(CGRect)frame {
    UILabel *namelab = [[UILabel alloc]initWithFrame:frame];
    namelab.textColor = [UIColor whiteColor];
    return namelab;
}
@end
