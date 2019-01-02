//
//  YNWheelView.m
//  YNWheelDemo
//
//  Created by liyangly on 2019/1/2.
//  Copyright © 2019 liyang. All rights reserved.
//

#import "YNWheelView.h"

@interface YNWheelView ()

@end

@implementation YNWheelView

- (instancetype)initWithItemCount:(NSInteger)itemCount andItemSize:(CGSize)itemSize
{
    self = [super init];
    if (self) {
        
        CGFloat radious = itemCount * itemSize.width / M_PI / 2;
        CGFloat viewWidth = radious * 2 + itemSize.width;
        
        self.frame = CGRectMake(0, 0, viewWidth, viewWidth);
        self.type = iCarouselTypeWheel;
        self.layer.cornerRadius = viewWidth/2;
        self.contentOffset = CGSizeMake(0, -radious);
    }
    return self;
}

@end
