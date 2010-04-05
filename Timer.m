//
//  Timer.m
//  Timer
//
//  Created by Sam Gwydir on 4/3/10.
//  Copyright 2010 Gwydir Software. All rights reserved.
//

#import "Timer.h"
#import "MainWindowController.h"
#import "OTSOverlayView.h"

@implementation Timer
@synthesize timeField,startButton,timer,time;

-(IBAction) startTimer:(id)sender {
// Set Time Interval from Text Field
    time = 60 * [self.timeField doubleValue];
// Set up Timer
    timer = [NSTimer timerWithTimeInterval:(time) target:self selector:@selector(setDone) userInfo:nil repeats:NO];
    NSLog(@"Started Timer for %f seconds",time);
// Add Timer to RunLoop and Start it
    [[NSRunLoop mainRunLoop] addTimer: timer forMode: NSDefaultRunLoopMode];
}
-(void) setDone {
// Show User the timer is done
    NSLog(@"Finished Timer for %f seconds",time);
// Init Speaker with the default voice
    NSSpeechSynthesizer *speaker = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
    [speaker startSpeakingString:@"Tea is Done"];
    [speaker release];
    [overlayView displayUsingPixelRadiusBlur:1.0
                              withOverlayRed:0.0
                                       green:0.0
                                        blue:0.0
                                       alpha:0.7];
}
// Reset the 'Done' Label when a new time is entered
//- (void)textDidChange:(NSNotification *)aNotification {
//    [self.done setStringValue:@""];
//}

//- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
//}
@end
