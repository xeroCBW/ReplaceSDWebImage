//
//  UIImageView+CBWWebCache.m
//  SDWebImageReplace
//
//  Created by 陈博文 on 16/6/17.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "UIImageView+CBWWebCache.h"
#import <UIImageView+WebCache.h>

@implementation UIImageView (CBWWebCache)

-(void)setImageWithURL:(NSURL *)url{
    
    [self sd_setImageWithURL:url];
}

- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder{
    
    [self sd_setImageWithURL:url placeholderImage:placeholder];
}

- (void)setImageWithURL:(NSURL *)url completed:(SDWebImageCompletedBlock)completedBlock{
    SDWebImageCompletionBlock tempBlock = ^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL){
        
        completedBlock(image, error,cacheType);
        imageURL = url;
        
    };
    
    [self sd_setImageWithURL:url completed:tempBlock];
}

@end
