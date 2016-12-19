//
//  MusicModel.h
//  XYMusicPlayer
//
//  Created by 高昕源 on 2016/12/20.
//  Copyright © 2016年 gxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicModel : NSObject

@property (copy, nonatomic) NSString *name;

@property (copy, nonatomic) NSString *singer;

@property (assign, nonatomic) float length;

@property (strong, nonatomic) NSURL *url;

@end
