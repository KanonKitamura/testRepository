//
//  ViewController.m
//  音テスト
//
//  Created by kanon kitamura on 2014/12/04.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end



@implementation ViewController



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLoad {
    
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"a" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    self.a = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
}

-(IBAction)listening_to_music: (id)sender {
    [self.a play];


    
    NSString *pathb = [[NSBundle mainBundle] pathForResource:@"b" ofType:@"mp3"];
    NSURL *urlb = [NSURL fileURLWithPath:pathb];
    self.b = [[AVAudioPlayer alloc] initWithContentsOfURL:urlb error:NULL];
    
    NSString *pathc = [[NSBundle mainBundle] pathForResource:@"c" ofType:@"mp3"];
    NSURL *urlc = [NSURL fileURLWithPath:pathc];
    self.c = [[AVAudioPlayer alloc] initWithContentsOfURL:urlc error:NULL];
    
    NSString *pathd = [[NSBundle mainBundle] pathForResource:@"d" ofType:@"mp3"];
    NSURL *urld = [NSURL fileURLWithPath:pathd];
    self.d= [[AVAudioPlayer alloc] initWithContentsOfURL:urld error:NULL];

}
- (IBAction)play:(id)sender {
    UIButton * PressedButton = (UIButton*)sender;
    switch(PressedButton.tag)     {
        case 1: [self.b play];
        case 2: [self.c play];
        case 3: [self.d play];
    }
}
@end
