//
//  OTSOverlayView.h
//  overlay_view_alternate
//
//  Created by Simon Wolf on 14/02/2010.
//  Copyright 2010 Simon Wolf All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <QuartzCore/QuartzCore.h>

@interface OTSOverlayView : NSView {
    IBOutlet NSView *parentView;

    NSResponder *currentResponder;
}

- (void)displayUsingPixelRadiusBlur:(CGFloat)blurRadius withOverlayRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
- (void)removeFromView;

@end
