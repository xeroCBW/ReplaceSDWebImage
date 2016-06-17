//
//  ViewController.m
//  SDWebImageReplace
//
//  Created by 陈博文 on 16/6/17.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+CBWWebCache.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1466147102&di=be68613a39e1b96ed1c865645e673eb1&src=http://cdn.duitang.com/uploads/item/201302/02/20130202001902_r4tPs.thumb.600_0.jpeg";
    NSURL *url = [NSURL URLWithString:str];
    UIImage *image = [UIImage imageNamed:@"Snip20160617_2"];
    [self.imageView setImageWithURL:url placeholderImage:image];
    
 [self.imageView setImageWithURL:url completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
     
     NSLog(@"909090909");
     
 }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
