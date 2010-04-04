//
//  Timer.m
//  Timer
//
//  Created by Sam Gwydir on 4/3/10.
//  Copyright 2010 Gwydir Software. All rights reserved.
//

#import "Timer.h"


@implementation Timer
@synthesize endTime,timeField,startButton,done;

-(IBAction) startTimer:(id)sender {
    [self.done setStringValue:@"Not Done"];
    NSLog(@"Started Timer");
// Set end time to current time.
    self.endTime = [NSDate date];
// Set Time Interval from Text Field
    NSTimeInterval time = 60 * [self.timeField doubleValue];
// Increment end Time with timeField
    self.endTime = [self.endTime dateByAddingTimeInterval:time];
// Kill time till the timer is done
    while (!(0 >= [self.endTime timeIntervalSinceNow])) {}
// Show User the timer is done
    [self.done setStringValue:@"Done"];
    NSLog(@"Finished Timer");
    NSBeep();
}
//- (void)textDidChange:(NSNotification *)aNotification {
//    [self.done setStringValue:@""];
//}

//- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
//}
@end
