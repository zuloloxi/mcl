(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:wait.h"
; at Sunday July 2,2006 7:32:16 pm.
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
;  Copyright (c) 1995 NeXT Computer, Inc. All Rights Reserved 
; 
;  * Copyright (c) 1982, 1986, 1989, 1993, 1994
;  *	The Regents of the University of California.  All rights reserved.
;  *
;  * Redistribution and use in source and binary forms, with or without
;  * modification, are permitted provided that the following conditions
;  * are met:
;  * 1. Redistributions of source code must retain the above copyright
;  *    notice, this list of conditions and the following disclaimer.
;  * 2. Redistributions in binary form must reproduce the above copyright
;  *    notice, this list of conditions and the following disclaimer in the
;  *    documentation and/or other materials provided with the distribution.
;  * 3. All advertising materials mentioning features or use of this software
;  *    must display the following acknowledgement:
;  *	This product includes software developed by the University of
;  *	California, Berkeley and its contributors.
;  * 4. Neither the name of the University nor the names of its contributors
;  *    may be used to endorse or promote products derived from this software
;  *    without specific prior written permission.
;  *
;  * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
;  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;  * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
;  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
;  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
;  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
;  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
;  * SUCH DAMAGE.
;  *
;  *	@(#)wait.h	8.2 (Berkeley) 7/10/94
;  
; #ifndef _SYS_WAIT_H_
; #define	_SYS_WAIT_H_
; 
;  * This file holds definitions relevent to the wait4 system call
;  * and the alternate interfaces that use it (wait, wait3, waitpid).
;  
; 
;  * Macros to test the exit status returned by wait
;  * and extract the relevant values.
;  
; #ifdef _POSIX_SOURCE
#| #|
#define _W_INT(i)	(i)
|#
 |#

; #else
; #define	_W_INT(w)	(*(int *)&(w))	/* convert union wait to int */
(defconstant $WCOREFLAG 200)
; #define	WCOREFLAG	0200

; #endif /* _POSIX_SOURCE */

(defconstant $_WSTATUS 0)
; #define	_WSTATUS(x)	(_W_INT(x) & 0177)
(defconstant $_WSTOPPED 177)
; #define	_WSTOPPED	0177		/* _WSTATUS if process is stopped */
(defconstant $WIFSTOPPED 0)
; #define WIFSTOPPED(x)	(_WSTATUS(x) == _WSTOPPED)
(defconstant $WSTOPSIG 0)
; #define WSTOPSIG(x)	(_W_INT(x) >> 8)
(defconstant $WIFSIGNALED 0)
; #define WIFSIGNALED(x)	(_WSTATUS(x) != _WSTOPPED && _WSTATUS(x) != 0)
(defconstant $WTERMSIG 0)
; #define WTERMSIG(x)	(_WSTATUS(x))
(defconstant $WIFEXITED 0)
; #define WIFEXITED(x)	(_WSTATUS(x) == 0)
(defconstant $WEXITSTATUS 0)
; #define WEXITSTATUS(x)	(_W_INT(x) >> 8)

; #if !defined(_POSIX_SOURCE)
(defconstant $WCOREDUMP 0)
; #define WCOREDUMP(x)	(_W_INT(x) & WCOREFLAG)
; #define	W_EXITCODE(ret, sig)	((ret) << 8 | (sig))
; #define	W_STOPCODE(sig)		((sig) << 8 | _WSTOPPED)

; #endif /* !defined(_POSIX_SOURCE) */

; 
;  * Option bits for the third argument of wait4.  WNOHANG causes the
;  * wait to not hang if there are no stopped or terminated processes, rather
;  * returning an error indication in this case (pid==0).  WUNTRACED
;  * indicates that the caller should receive status about untraced children
;  * which stop due to signals.  If children are stopped and a wait without
;  * this option is done, it is as though they were still running... nothing
;  * about them is returned.
;  
(defconstant $WNOHANG 1)
; #define WNOHANG		1	/* don't hang in wait */
(defconstant $WUNTRACED 2)
; #define WUNTRACED	2	/* tell about stopped, untraced children */

; #if !defined(_POSIX_SOURCE)
;  POSIX extensions and 4.2/4.3 compatability: 
; 
;  * Tokens for special values of the "pid" parameter to wait4.
;  
(defconstant $WAIT_ANY -1)
; #define	WAIT_ANY	(-1)	/* any process */
(defconstant $WAIT_MYPGRP 0)
; #define	WAIT_MYPGRP	0	/* any process in my process group */

(require-interface "machine/endian")
; 
;  * Deprecated:
;  * Structure of the information in the status word returned by wait4.
;  * If w_stopval==WSTOPPED, then the second structure describes
;  * the information returned, else the first.
;  
(defrecord wait
   (:variant
   (
   (w_status :signed-long)
   )
                                                ;  used in syscall 
                                                ; 
; 	 * Terminated process status.
; 	 
   (

; #if BYTE_ORDER == LITTLE_ENDIAN 
#| 
   (w_Termsig :UInt32)                          ;(: 7)
                                                ;  termination signal 
                                                ;(w_Coredump : 1)
                                                ;  core dump indicator 
                                                ;(w_Retcode : 8)
                                                ;  exit code if w_termsig==0 
                                                ;(w_Filler : 16)
                                                ;  upper bits filler 
 |#

; #endif


; #if BYTE_ORDER == BIG_ENDIAN 
   (w_Filler :UInt32)                           ;(: 16)
                                                ;  upper bits filler 
                                                ;(w_Retcode : 8)
                                                ;  exit code if w_termsig==0 
                                                ;(w_Coredump : 1)
                                                ;  core dump indicator 
                                                ;(w_Termsig : 7)
                                                ;  termination signal 

; #endif

   )
                                                ; 
; 	 * Stopped process status.  Returned
; 	 * only for traced children unless requested
; 	 * with the WUNTRACED option bit.
; 	 
   (

; #if BYTE_ORDER == LITTLE_ENDIAN 
#| 
   (w_Stopval :UInt32)                          ;(: 8)
                                                ;  == W_STOPPED if stopped 
                                                ;(w_Stopsig : 8)
                                                ;  signal that stopped us 
                                                ;(w_Filler : 16)
                                                ;  upper bits filler 
 |#

; #endif


; #if BYTE_ORDER == BIG_ENDIAN 
   (w_Filler :UInt32)                           ;(: 16)
                                                ;  upper bits filler 
                                                ;(w_Stopsig : 8)
                                                ;  signal that stopped us 
                                                ;(w_Stopval : 8)
                                                ;  == W_STOPPED if stopped 

; #endif

   )
   )
)
; #define	w_termsig	w_T.w_Termsig
; #define w_coredump	w_T.w_Coredump
; #define w_retcode	w_T.w_Retcode
; #define w_stopval	w_S.w_Stopval
; #define w_stopsig	w_S.w_Stopsig
; #define	WSTOPPED	_WSTOPPED

; #endif /* !defined(_POSIX_SOURCE) */

; #ifndef KERNEL

(require-interface "sys/types")

(require-interface "sys/cdefs")
;  forward declaration 
#|
 confused about __P #\( #\( int * #\) #\)
|#
#|
 confused about __P #\( #\( pid_t #\, int * #\, int #\) #\)
|#

; #if  !defined(_POSIX_SOURCE)
#|
 confused about __P #\( #\( int * #\, int #\, struct rusage * #\) #\)
|#
#|
 confused about __P #\( #\( pid_t #\, int * #\, int #\, struct rusage * #\) #\)
|#

; #endif /* !defined(_POSIX_SOURCE) */


; #endif


; #endif /* !_SYS_WAIT_H_ */


(provide-interface "wait")