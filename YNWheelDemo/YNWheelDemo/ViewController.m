//
//  ViewController.m
//  YNWheelDemo
//
//  Created by liyangly on 2019/1/2.
//  Copyright © 2019 liyang. All rights reserved.
//

#import "ViewController.h"
// view
#import "YNWheelView.h"

@interface ViewController ()<iCarouselDataSource>

@property (nonatomic, assign) NSInteger itemCount;
@property (nonatomic, assign) CGSize itemSize;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.itemCount = 12;
    self.itemSize = CGSizeMake(50, 50);
    YNWheelView *wheelView = [[YNWheelView alloc] initWithItemCount:self.itemCount andItemSize:self.itemSize];
    
    wheelView.dataSource = self;
    wheelView.backgroundColor = [UIColor redColor];
    
    // the frame size depend on the itemCount and the itemSize
    [self.view addSubview:wheelView];
    wheelView.center = self.view.center;
}

- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel {
    return self.itemCount;
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(nullable UIView *)view {
    UILabel *label = (UILabel *)view;
    if (!label) {
        label = [UILabel new];
        label.frame = CGRectMake(0, 0, self.itemSize.width, self.itemSize.height);
        label.backgroundColor = [UIColor yellowColor];
        label.text = @(index).stringValue;
        label.textAlignment = NSTextAlignmentCenter;
        label.layer.cornerRadius = self.itemSize.width/2;
    }
    return label;
}


@end
