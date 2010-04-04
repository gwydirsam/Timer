//
//  TimerAppDelegate.h
//  Timer
//
//  Created by Sam Gwydir on 4/3/10.
//  Copyright 2010 Gwydir Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TimerAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
