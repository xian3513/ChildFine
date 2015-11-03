//
//  UILabel+Type.m
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "UILabel+Type.h"

@implementation UILabel (Type)

- (void)setAttributedStringLinesSpaceWithString:(NSString *)string space:(NSInteger)space{
    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:string];
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:space];
    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [string length])];
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
