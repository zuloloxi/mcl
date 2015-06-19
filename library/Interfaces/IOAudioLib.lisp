(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:IOAudioLib.h"
; at Sunday July 2,2006 7:28:28 pm.
; 
;  * Copyright (c) 2000 Apple Computer, Inc. All rights reserved.
;  *
;  * @APPLE_LICENSE_HEADER_START@
;  * 
;  * The contents of this file constitute Original Code as defined in and
;  * are subject to the Apple Public Source License Version 1.1 (the
;  * "License").  You may not use this file except in compliance with the
;  * License.  Please obtain a copy of the License at
;  * http://www.apple.com/publicsource and read it before using this file.
;  * 
;  * This Original Code and all software distributed under the License are
;  * distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, EITHER
;  * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
;  * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
;  * FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT.  Please see the
;  * License for the specific language governing rights and limitations
;  * under the License.
;  * 
;  * @APPLE_LICENSE_HEADER_END@
;  
; 
;  * Copyright (c) 1998-2000 Apple Computer, Inc. All rights reserved.
;  
; !
;  * @header IOAudioLib
;  * C interface to IOAudio functions
;  
; #ifndef _IOAUDIOLIB_H
; #define _IOAUDIOLIB_H

(require-interface "IOKit/audio/IOAudioTypes")

; #if 0
#| ; #ifdef __cplusplus
#|
extern "C" {
#endif
|#
; !
;  * @function IOAudioIsOutput
;  * @abstract Determines if the audio stream is an output stream
;  * @param service
;  * @param out
;  * @result kern_return_t
;  
; !
;  * @function IOAudioFlush
;  * @abstract Indicate the position at which the audio stream can be stopped.
;  * @param connect the audio stream
;  * @param end the position
;  * @result kern_return_t
;  
; !
;  * @function IOAudioSetErase
;  * @abstract Set autoerase flag, returns old value
;  * @param connect the audio stream
;  * @param erase true to turn off, false otherwise
;  * @param oldVal previous value
;  * @result kern_return_t
;  
; #ifdef __cplusplus
#|
}
#endif
|#
 |#

; #endif /* 0 */


; #endif /* ! _IOAUDIOLIB_H */


(provide-interface "IOAudioLib")