//
//  ViewController.h
//  音テスト
//
//  Created by kanon kitamura on 2014/12/04.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property AVAudioPlayer *a;
- (IBAction)listening_to_music;
@property AVAudioPlayer *b;
@property AVAudioPlayer *c;
@property AVAudioPlayer *d;

- (IBAction)play: (id)sender;
@end

//変数名は小文字から始める