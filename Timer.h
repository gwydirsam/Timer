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
}
@property (assign) NSDate *endTime;
@property (assign) IBOutlet NSTextField *timeField;
@property (assign) IBOutlet NSButton *startButton;
@property (assign) IBOutlet NSTextField *done;

-(IBAction) startTimer:(id)sender;
@end
