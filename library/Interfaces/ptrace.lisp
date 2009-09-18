(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:ptrace.h"
; at Sunday July 2,2006 7:31:20 pm.
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
;  * Copyright 1995 NeXT Computer, Inc. All rights reserved.
;  
; #ifndef _BSD_MACHINE_PTRACE_H_
; #define _BSD_MACHINE_PTRACE_H_

; #if defined (__ppc__)
#| |#

(require-interface "ppc/ptrace")

#|
 |#

; #elif defined (__i386__)
#| |#

(require-interface "i386/ptrace")

#|
 |#
#| 
; #else

; #error architecture not supported
 |#

; #endif


; #endif /* _BSD_MACHINE_PTRACE_H_ */


(provide-interface "ptrace")