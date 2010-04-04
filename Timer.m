//
//  Timer.m
//  Timer
//
//  Created by Sam Gwydir on 4/3/10.
//  Copyright 2010 Gwydir Software. All rights reserved.
//

#import "Timer.h"


@implementation Timer
@synthesize timeField,startButton,done,timer;

-(IBAction) startTimer:(id)sender {
    NSLog(@"Started Timer");
// Set Time Interval from Text Field
    NSTimeInterval time = 60 * [self.timeField doubleValue];
// Set up Timer
    timer = [NSTimer timerWithTimeInterval:(time) target:self selector:@selector(setDone) userInfo:nil repeats:NO];
// Add Timer to RunLoop and Start it
    [[NSRunLoop mainRunLoop] addTimer: timer forMode: NSDefaultRunLoopMode];
}
-(void) setDone {
// Show User the timer is done
    [self.done setStringValue:@"Done"];
    NSLog(@"Finished Timer");
    NSBeep();
}
// Reset the 'Done' Label when a new time is entered
//- (void)textDidChange:(NSNotification *)aNotification {
//    [self.done setStringValue:@""];
//}

//- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
//}
@end
