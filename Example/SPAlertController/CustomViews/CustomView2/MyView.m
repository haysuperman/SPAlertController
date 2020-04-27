//
//  MyView.m
//  SPAlertController
//
//  Created by 乐升平 on 17/10/21.
//  Copyright © 2017年 iDress. All rights reserved.
//

#import "MyView.h"
#import "UIColor+DarkMode.h"

@interface MyView()

@end

@implementation MyView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.backgroundColor = [UIColor colorPairsWithLightColor:[UIColor whiteColor] darkColor:[UIColor blackColor]];
    
    self.passwordView.pointColor = [UIColor colorPairsWithLightColor:[UIColor blackColor] darkColor:[UIColor whiteColor]];
}


+ (instancetype)shareMyView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
}


@end
