//
//  OTSOverlayView.m
//  overlay_view_alternate
//
//  Created by Simon Wolf on 14/02/2010.
//  Copyright 2010 Simon Wolf All rights reserved.
//

#import "OTSOverlayView.h"

@interface  OTSOverlayView()

- (CIFilter *)blurFilterWithInputRadius:(CGFloat)blurRadius;

@end


@implementation OTSOverlayView

- (void)awakeFromNib;
{
    [parentView setWantsLayer:YES];
    [parentView setLayer:[CALayer layer]];

    [self setWantsLayer:YES];
    [self setLayer:[CALayer layer]];

    [self setAutoresizingMask:(NSViewWidthSizable | NSViewHeightSizable)];
}


#pragma mark -
#pragma mark Public Methods

- (void)displayUsingPixelRadiusBlur:(CGFloat)blurRadius withOverlayRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
{
    // Get the current responder for the window and store it so that it can be restored later
    currentResponder = [[parentView window] firstResponder];
    if ([currentResponder isEqualTo:[[parentView window] fieldEditor:YES forObject:[parentView window]]])
        currentResponder = [(NSTextView *)currentResponder delegate];
    
    // Size the overlay view
    [self setFrame:[parentView bounds]];

    // Prepare the layer
    CGColorRef overlayColor = CGColorCreateGenericRGB(red, green, blue, alpha);
    [[self layer] setBackgroundColor:overlayColor];
    CGColorRelease(overlayColor);
    
    if (blurRadius > 0.0)
        [[self layer] setBackgroundFilters:[NSArray arrayWithObject:[self blurFilterWithInputRadius:blurRadius]]];
    else
        [[self layer] setBackgroundFilters:nil];

    [[parentView animator] addSubview:self];
    [[parentView window] makeFirstResponder:self];
}

- (void)removeFromView;
{
    NSWindow *ownerWindow = [[self superview] window];
    [[self animator] removeFromSuperview];

    [ownerWindow makeFirstResponder:currentResponder];
}


#pragma mark -
#pragma mark Over-Ride Methods

- (BOOL)acceptsFirstResponder {
    return YES;
}

- (void)mouseDown:(NSEvent *)theEvent {
    // Block mouse events
}


#pragma mark -
#pragma mark CIFilters

- (CIFilter *)blurFilterWithInputRadius:(CGFloat)blurRadius;
{
    CIFilter *blur = [CIFilter filterWithName:@"CIGaussianBlur"];
    [blur setDefaults];
    [blur setValue:[NSNumber numberWithFloat:blurRadius] forKey:@"inputRadius"];
    return blur;
}

@end
