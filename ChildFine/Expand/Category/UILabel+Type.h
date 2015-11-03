//
//  UILabel+Type.h
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Type)

+ (UILabel *)FamilyInitlableWithFrame:(CGRect)frame;

+ (UILabel *)FamilyLableBigFontWithFrame:(CGRect)frame;
+ (UILabel *)FamilyLableSmallFontWithFrame:(CGRect)frame;
+ (UILabel *)FamilyLableMiddleFontWithFrame:(CGRect)frame;

- (void)setAttributedStringLinesSpaceWithString:(NSString *)string space:(NSInteger)space;
@end
