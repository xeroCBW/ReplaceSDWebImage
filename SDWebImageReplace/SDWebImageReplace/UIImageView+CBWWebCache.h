//
//  UIImageView+CBWWebCache.h
//  SDWebImageReplace
//
//  Created by 陈博文 on 16/6/17.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDWebImageManager.h"


@interface UIImageView (CBWWebCache)

- (void)setImageWithURL:(NSURL *)url;
- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
- (void)setImageWithURL:(NSURL *)url completed:(SDWebImageCompletedBlock)completedBlock;

@end
