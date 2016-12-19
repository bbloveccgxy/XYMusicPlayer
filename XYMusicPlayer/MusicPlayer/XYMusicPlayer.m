//
//  XYMusicPlayer.m
//  XYMusicPlayer
//
//  Created by 高昕源 on 2016/12/19.
//  Copyright © 2016年 gxy. All rights reserved.
//

#import "XYMusicPlayer.h"
#import "MusicModel.h"

@interface XYMusicPlayer ()

@end

@implementation XYMusicPlayer

static XYMusicPlayer *sharedPlayer = nil;

+ (XYMusicPlayer*)sharePlayer
{
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        if(sharedPlayer == nil)
        {
            sharedPlayer = [[self alloc] init];
        }
    });
    return sharedPlayer;
}

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        NSLog(@"");
    }
    return self;
}

#pragma mark - ---------------play control---------------------

- (void)play {
    NSLog(@"%@", self.musicModel);
}

- (void)playFrom:(float)percentage {
    
}

- (void)pause {
    
}

- (void)stop {
    
}

#pragma mark - -------------ensure singleton ------------------
+(id)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        if(sharedPlayer == nil)
        {
            sharedPlayer = [super allocWithZone:zone];
        }
    });
    return sharedPlayer;
}

- (id)copy
{
    return self;
}

- (id)mutableCopy
{
    return self;
}

#pragma mark - ------------self description--------------------
- (NSString *)description
{
    NSString *des = [NSString stringWithFormat:@"XYMusicPlayer has been created, instance memory address:%p",self];
    return des;
}
@end
