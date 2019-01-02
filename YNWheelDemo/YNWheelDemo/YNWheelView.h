//
//  YNWheelView.h
//  YNWheelDemo
//
//  Created by liyangly on 2019/1/2.
//  Copyright © 2019 liyang. All rights reserved.
//

#import "iCarousel.h"

NS_ASSUME_NONNULL_BEGIN

@interface YNWheelView : iCarousel

- (instancetype)initWithItemCount:(NSInteger)itemCount andItemSize:(CGSize)itemSize;

@end

NS_ASSUME_NONNULL_END
