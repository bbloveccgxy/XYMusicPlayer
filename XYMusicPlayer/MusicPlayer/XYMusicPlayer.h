//
//  XYMusicPlayer.h
//  XYMusicPlayer
//
//  Created by 高昕源 on 2016/12/19.
//  Copyright © 2016年 gxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MusicModel;

@interface XYMusicPlayer : NSObject

@property (strong, nonatomic) MusicModel *musicModel;

@property (assign, nonatomic) BOOL isPlaying;

+ (XYMusicPlayer*)sharePlayer;

- (void)play;

- (void)playFrom:(float)percentage;

- (void)pause;

- (void)stop;

@end
