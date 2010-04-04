//
//  Timer.h
//  Timer
//
//  Created by Sam Gwydir on 4/3/10.
//  Copyright 2010 Gwydir Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Timer : NSObject {
    NSDate *endTime;
    NSTextField *timeField;
    NSButton *startButton;
    NSTextField *done;
    NSTimer *timer;
}
@property (assign) NSDate *endTime;
@property (assign) IBOutlet NSTextField *timeField;
@property (assign) IBOutlet NSButton *startButton;
@property (assign) IBOutlet NSTextField *done;
@property (nonatomic, retain) NSTimer * timer;

-(IBAction) startTimer:(id)sender;
@end
