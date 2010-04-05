//
//  MainWindowController.m
//  overlay_view_alternate
//
//  Created by Simon Wolf on 14/02/2010.
//  Copyright 2010 Simon Wolf All rights reserved.
//

#import "MainWindowController.h"

@implementation MainWindowController

- (IBAction)showOverlay:(id)sender;
{
    [overlayView displayUsingPixelRadiusBlur:1.0
                              withOverlayRed:0.0
                                       green:0.0
                                        blue:0.0
                                       alpha:0.7];
}

- (IBAction)hideOverlay:(id)sender;
{
    [overlayView removeFromView];
}

@end
