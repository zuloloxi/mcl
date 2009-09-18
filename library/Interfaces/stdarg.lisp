(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:stdarg.h"
; at Sunday July 2,2006 7:22:49 pm.
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
;  stdarg.h for GNU.
;    Note that the type used in va_arg is supposed to match the
;    actual type **after default promotions**.
;    Thus, va_arg (..., short) is not valid.  
; #ifndef _STDARG_H
; #ifndef _ANSI_STDARG_H_
; #ifndef __need___va_list
; #define _STDARG_H
; #define _ANSI_STDARG_H_

; #endif /* not __need___va_list */

; #undef __need___va_list
; #ifdef __clipper__
#| #|
#include <va-clipper.h>
|#
 |#

; #else
; #ifdef __m88k__
#| #|
#include <va-m88k.h>
|#
 |#

; #else
; #ifdef __i860__
#| #|
#include <va-i860.h>
|#
 |#

; #else
; #ifdef __hppa__
#| #|
#include <va-pa.h>
|#
 |#

; #else
; #ifdef __mips__
#| #|
#include <va-mips.h>
|#
 |#

; #else
; #ifdef __sparc__
#| #|
#include <va-sparc.h>
|#
 |#

; #else
; #ifdef __i960__
#| #|
#include <va-i960.h>
|#
 |#

; #else
; #ifdef __alpha__
#| #|
#include <va-alpha.h>
|#
 |#

; #else

; #if defined (__H8300__) || defined (__H8300H__)
#| 
(require-interface "va-h8300")
 |#

; #else

; #if defined (__PPC__) && defined (_CALL_SYSV)
#| 
(require-interface "va-ppc")
 |#

; #else
;  Define __gnuc_va_list.  
; #ifndef __GNUC_VA_LIST
; #define __GNUC_VA_LIST

; #if defined(__svr4__) || defined(_AIX) || defined(_M_UNIX) || defined(__NetBSD__) || (defined(__APPLE__) && defined(__ppc__))
#| 
(def-mactype :__gnuc_va_list (find-mactype '(:pointer :character)))
 |#

; #else

(def-mactype :__gnuc_va_list (find-mactype '(:pointer :void)))

; #endif


; #endif

;  Define the standard macros for the user,
;    if this invocation was from the user program.  
; #ifdef _STDARG_H
;  Amount of space required in an argument list for an arg of type TYPE.
;    TYPE may alternatively be an expression whose type is used.  

; #if defined(sysV68)
#| 
; #define __va_rounded_size(TYPE)    (((sizeof (TYPE) + sizeof (short) - 1) / sizeof (short)) * sizeof (short))
 |#

; #else
; #define __va_rounded_size(TYPE)    (((sizeof (TYPE) + sizeof (int) - 1) / sizeof (int)) * sizeof (int))

; #endif

; #define va_start(AP, LASTARG) 						 (AP = ((__gnuc_va_list) __builtin_next_arg (LASTARG)))
; #undef va_end

(deftrap-inline "_va_end" 
   ((ARG2 (:pointer :void))
   )
   :void
() )
;  Defined in libgcc.a 
; #define va_end(AP)	((void)0)
;  We cast to void * and then to TYPE * because this avoids
;    a warning about increasing the alignment requirement.  

; #if defined (__arm__) || defined (__i386__) || defined (__i860__) || defined (__ns32000__) || defined (__vax__)
#|                                              ;  This is for little-endian machines; small args are padded upward.  
; #define va_arg(AP, TYPE)						 (AP = (__gnuc_va_list) ((char *) (AP) + __va_rounded_size (TYPE)),	  *((TYPE *) (void *) ((char *) (AP) - __va_rounded_size (TYPE))))
 |#

; #else /* big-endian */
;  This is for big-endian machines; small args are padded downward.  
; #define va_arg(AP, TYPE)						 (AP = (__gnuc_va_list) ((char *) (AP) + __va_rounded_size (TYPE)),	  *((TYPE *) (void *) ((char *) (AP)							       - ((sizeof (TYPE) < __va_rounded_size (char)				   ? sizeof (TYPE) : __va_rounded_size (TYPE))))))

; #endif /* big-endian */


; #endif /* _STDARG_H */


; #endif /* not powerpc with V.4 calling sequence */


; #endif /* not h8300 */


; #endif /* not alpha */


; #endif /* not i960 */


; #endif /* not sparc */


; #endif /* not mips */


; #endif /* not hppa */


; #endif /* not i860 */


; #endif /* not m88k */


; #endif /* not clipper */

; #ifdef _STDARG_H
;  Define va_list, if desired, from __gnuc_va_list. 
;  We deliberately do not define va_list when called from
;    stdio.h, because ANSI C says that stdio.h is not supposed to define
;    va_list.  stdio.h needs to have access to that data type, 
;    but must not use that name.  It should use the name __gnuc_va_list,
;    which is safe because it is reserved for the implementation.  
; #ifdef _HIDDEN_VA_LIST  /* On OSF1, this means varargs.h is "half-loaded".  */
#| #|
#undef _VA_LIST
#endif
|#
 |#
; #ifdef _BSD_VA_LIST
#| #|
#undef _BSD_VA_LIST
#endif
|#
 |#
; #ifdef __svr4__
#| #|

#ifndef_VA_LIST_
#define _VA_LIST_
#ifdef__i860__
#ifndef_VA_LIST
#define _VA_LIST va_list
#endif#endif
typedef __gnuc_va_list va_list;
#endif
|#
 |#

; #else /* not __svr4__ */
;  The macro _VA_LIST_ is the same thing used by this file in Ultrix.
;    But on BSD NET2 we must not test or define or undef it.
;    (Note that the comments in NET 2's ansi.h
;    are incorrect for _VA_LIST_--see stdio.h!)  

; #if !defined (_VA_LIST_) || defined (__BSD_NET2__) || defined (____386BSD____) || defined (__bsdi__) || defined (__sequent__) || defined (__FreeBSD__) || defined(WINNT)
;  The macro _VA_LIST_DEFINED is used in Windows NT 3.5  
; #ifndef _VA_LIST_DEFINED
;  The macro _VA_LIST is used in SCO Unix 3.2.  
; #ifndef _VA_LIST
;  The macro _VA_LIST_T_H is used in the Bull dpx2  
; #ifndef _VA_LIST_T_H

(def-mactype :va_list (find-mactype ':__gnuc_va_list))

; #endif /* not _VA_LIST_T_H */


; #endif /* not _VA_LIST */


; #endif /* not _VA_LIST_DEFINED */


; #if !(defined (__BSD_NET2__) || defined (____386BSD____) || defined (__bsdi__) || defined (__sequent__) || defined (__FreeBSD__))
; #define _VA_LIST_

; #endif

; #ifndef _VA_LIST
; #define _VA_LIST

; #endif

; #ifndef _VA_LIST_DEFINED
; #define _VA_LIST_DEFINED

; #endif

; #ifndef _VA_LIST_T_H
; #define _VA_LIST_T_H

; #endif


; #endif /* not _VA_LIST_, except on certain systems */


; #endif /* not __svr4__ */


; #endif /* _STDARG_H */


; #endif /* not _ANSI_STDARG_H_ */


; #endif /* not _STDARG_H */


(provide-interface "stdarg")