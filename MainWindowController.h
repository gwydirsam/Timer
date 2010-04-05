//
//  MainWindowController.h
//  overlay_view_alternate
//
//  Created by Simon Wolf on 14/02/2010.
//  Copyright 2010 Simon Wolf All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "OTSOverlayView.h"

@interface MainWindowController : NSWindowController {
    IBOutlet OTSOverlayView *overlayView;
}

- (IBAction)showOverlay:(id)sender;
- (IBAction)hideOverlay:(id)sender;

@end
