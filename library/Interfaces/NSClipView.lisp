(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:NSClipView.h"
; at Sunday July 2,2006 7:30:38 pm.
; 
; 	NSClipView.h
; 	Application Kit
; 	Copyright (c) 1994-2003, Apple Computer, Inc.
; 	All rights reserved.
; 

; #import <AppKit/NSView.h>
#| @INTERFACE 
NSClipView : NSView
{
    
    NSColor             *_backgroundColor;
    NSView              *_docView;
    NSRect              _docRect;
    NSRect              _oldDocFrame;
    NSCursor            *_cursor;
    void                *_halftone;
    struct __cvFlags {
	unsigned int        isFlipped:1;
	unsigned int        onlyUncovered:1;
	unsigned int        reflectScroll:1;
	unsigned int        usedByCell:1;
	unsigned int	    scrollClipTo:1;
	unsigned int	    noCopyOnScroll:1;
        unsigned int        drawsBackground:1;
        unsigned int        scrollInProgress:1;
        unsigned int        skipRemoveSuperviewCheck:1;
        unsigned int        animateCurrentScroll:1;
        unsigned int        canAnimateScrolls:1;
        unsigned int	    nextScrollRelativeToCurrentPosition:1;
        unsigned int        RESERVED:20;
    } _cvFlags;
}

- (void)setBackgroundColor:(NSColor *)color;
- (NSColor *)backgroundColor;
- (void)setDrawsBackground:(BOOL)flag;
- (BOOL)drawsBackground;
- (void)setDocumentView:(NSView *)aView;
- (id)documentView;
- (NSRect)documentRect;
- (void)setDocumentCursor:(NSCursor *)anObj;
- (NSCursor *)documentCursor;
- (NSRect)documentVisibleRect;
- (void)viewFrameChanged:(NSNotification *)notification;
- (void)viewBoundsChanged:(NSNotification *)notification;
- (void)setCopiesOnScroll:(BOOL)flag;
- (BOOL)copiesOnScroll;
- (BOOL)autoscroll:(NSEvent *)theEvent;
- (NSPoint)constrainScrollPoint:(NSPoint)newOrigin;
- (void)scrollToPoint:(NSPoint)newOrigin;

|#
#| @INTERFACE 
NSView(NSClipViewSuperview)
- (void)reflectScrolledClipView:(NSClipView *)aClipView;
- (void)scrollClipView:(NSClipView *)aClipView toPoint:(NSPoint)aPoint;
|#

(provide-interface "NSClipView")