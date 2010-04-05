//
//  Timer.h
//  Timer
//
//  Created by Sam Gwydir on 4/3/10.
//  Copyright 2010 Gwydir Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "OTSOverlayView.h"

@interface Timer : NSObject {
    NSTextField *timeField;
    NSButton *startButton;
    NSTimer *timer;
    NSTimeInterval time;
    IBOutlet OTSOverlayView *overlayView;
}
@property (assign) IBOutlet NSTextField *timeField;
@property (assign) IBOutlet NSButton *startButton;
@property (assign) NSTimeInterval time;
@property (nonatomic, retain) NSTimer * timer;

-(IBAction) startTimer:(id)sender;
@end
