//
//  AppController.m
//  overlay_view_alternate
//
//  Created by Simon Wolf on 14/02/2010.
//  Copyright 2010 Simon Wolf All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (void)awakeFromNib
{
    if (!mainWindowController)
        mainWindowController = [[MainWindowController alloc] initWithWindowNibName:@"MainWindow"];
    [mainWindowController showWindow:self];
}

@end
