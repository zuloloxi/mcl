(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:NSDistantObject.h"
; at Sunday July 2,2006 7:30:46 pm.
; 	NSDistantObject.h
; 	Copyright (c) 1989-2003, Apple, Inc. All rights reserved.
; 

; #import <Foundation/NSProxy.h>
#| @INTERFACE 
NSDistantObject : NSProxy <NSCoding> {
    private
    id			name;
    unsigned		wire:2;
    unsigned		unused:6;
    unsigned		refCount:24;
    NSConnection	*conn;
    unsigned		wireCount;
    void		*_knownSelectors;
    void		*_reserved;
}

+ (NSDistantObject *)proxyWithTarget:(id)target connection:(NSConnection *)connection;
- (id)initWithTarget:(id)target connection:(NSConnection *)connection;

+ (NSDistantObject *)proxyWithLocal:(id)target connection:(NSConnection *)connection;
- (id)initWithLocal:(id)target connection:(NSConnection *)connection;

- (void)setProtocolForProxy:(Protocol *)proto;

- (NSConnection *)connectionForProxy;

|#

(provide-interface "NSDistantObject")