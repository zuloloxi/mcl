(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:AppleHelp.h"
; at Sunday July 2,2006 7:25:17 pm.
; 
;      File:       Help/AppleHelp.h
;  
;      Contains:   Apple Help
;  
;      Version:    Help-27~1003
;  
;      Copyright:  � 2000-2003 by Apple Computer, Inc., all rights reserved.
;  
;      Bugs?:      For bug reports, consult the following page on
;                  the World Wide Web:
;  
;                      http://developer.apple.com/bugreporter/
;  
; 
; #ifndef __APPLEHELP__
; #define __APPLEHELP__
; #ifndef __CORESERVICES__
#| #|
#include <CoreServicesCoreServices.h>
#endif
|#
 |#

(require-interface "AvailabilityMacros")

; #if PRAGMA_ONCE
#| ; #pragma once
 |#

; #endif

; #ifdef __cplusplus
#| #|
extern "C" {
#endif
|#
 |#
;  AppleHelp Error Codes 

(defconstant $kAHInternalErr -10790)
(defconstant $kAHInternetConfigPrefErr -10791)

(def-mactype :AHTOCType (find-mactype ':SInt16))

(defconstant $kAHTOCTypeUser 0)
(defconstant $kAHTOCTypeDeveloper 1)
; 
;  *  AHSearch()
;  *  
;  *  Discussion:
;  *    Delivers a request to perform the specified search to the Help
;  *    Viewer application.
;  *  
;  *  Parameters:
;  *    
;  *    bookname:
;  *      Optionally, the AppleTitle of the Help book to be searched. If
;  *      NULL, all installed Help books are searched.
;  *    
;  *    query:
;  *      The query to be made. This string can, if desired, have boolean
;  *      operators or be a natural language phrase.
;  *  
;  *  Result:
;  *    An operating system result code that indicates whether the
;  *    request was successfully sent to the Help Viewer application.
;  *    Possible values: noErr, paramErr, kAHInternalErr,
;  *    kAHInternetConfigPrefErr.
;  *  
;  *  Availability:
;  *    Mac OS X:         in version 10.0 and later in Carbon.framework
;  *    CarbonLib:        in CarbonLib 1.1 and later
;  *    Non-Carbon CFM:   not available
;  

(deftrap-inline "_AHSearch" 
   ((bookname (:pointer :__CFString))
    (query (:pointer :__CFString))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER
   :OSStatus
() )
; 
;  *  AHGotoMainTOC()
;  *  
;  *  Discussion:
;  *    Delivers a request to load the main table of contents of
;  *    installed help books to the Help Viewer application.
;  *  
;  *  Parameters:
;  *    
;  *    toctype:
;  *      The type of table of contents to be loaded: user or developer.
;  *  
;  *  Result:
;  *    An operating system result code that indicates whether the
;  *    request was successfully sent to the Help Viewer application.
;  *    Possible values: noErr, paramErr, kAHInternalErr,
;  *    kAHInternetConfigPrefErr.
;  *  
;  *  Availability:
;  *    Mac OS X:         in version 10.0 and later in Carbon.framework
;  *    CarbonLib:        in CarbonLib 1.1 and later
;  *    Non-Carbon CFM:   not available
;  

(deftrap-inline "_AHGotoMainTOC" 
   ((toctype :SInt16)
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER
   :OSStatus
() )
; 
;  *  AHGotoPage()
;  *  
;  *  Discussion:
;  *    Delivers a request to load a specific text/html file to the Help
;  *    Viewer application.
;  *  
;  *  Parameters:
;  *    
;  *    bookname:
;  *      Optionally, the AppleTitle of an installed Help book. If NULL,
;  *      the path parameter must be a full file: URL to the file to be
;  *      opened.
;  *    
;  *    path:
;  *      Optionally, one of two types of paths: 1) a URL-style path to a
;  *      file that is relative to the main folder of the book supplied
;  *      in the bookname parameter, or 2) if bookname is NULL, a full
;  *      file: URL to the file to be opened. If this parameter is NULL,
;  *      then bookname must not be NULL, and is used to open the Help
;  *      Viewer to the main page of Help content for the specified book.
;  *    
;  *    anchor:
;  *      Optionally, the name of anchor tag to scroll to in the newly
;  *      opened file. Can be NULL.
;  *  
;  *  Result:
;  *    An operating system result code that indicates whether the
;  *    request was successfully sent to the Help Viewer application.
;  *    Possible values: noErr, paramErr, kAHInternalErr,
;  *    kAHInternetConfigPrefErr.
;  *  
;  *  Availability:
;  *    Mac OS X:         in version 10.0 and later in Carbon.framework
;  *    CarbonLib:        in CarbonLib 1.1 and later
;  *    Non-Carbon CFM:   not available
;  

(deftrap-inline "_AHGotoPage" 
   ((bookname (:pointer :__CFString))
    (path (:pointer :__CFString))
    (anchor (:pointer :__CFString))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER
   :OSStatus
() )
; 
;  *  AHLookupAnchor()
;  *  
;  *  Discussion:
;  *    Delivers a request to perform an anchor lookup to the Help Viewer
;  *    application. Note: anchor lookups will fail unless you have
;  *    indexed your help content with anchor indexing turned on in the
;  *    indexing tool's preferences panel.
;  *  
;  *  Parameters:
;  *    
;  *    bookname:
;  *      Optionally, the AppleTitle of the Help book to searched. If
;  *      NULL, the anchor lookup is performed using all installed Help
;  *      books.
;  *    
;  *    anchor:
;  *      The name of the anchor tag to look up.
;  *  
;  *  Result:
;  *    An operating system result code that indicates whether the
;  *    request was successfully sent to the Help Viewer application.
;  *    Possible values: noErr, paramErr, kAHInternalErr,
;  *    kAHInternetConfigPrefErr.
;  *  
;  *  Availability:
;  *    Mac OS X:         in version 10.0 and later in Carbon.framework
;  *    CarbonLib:        in CarbonLib 1.1 and later
;  *    Non-Carbon CFM:   not available
;  

(deftrap-inline "_AHLookupAnchor" 
   ((bookname (:pointer :__CFString))
    (anchor (:pointer :__CFString))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER
   :OSStatus
() )
; 
;  *  AHRegisterHelpBook()
;  *  
;  *  Discussion:
;  *    Registers a book of Help content such that the book will appear
;  *    in the current user's main table of contents (Help Center) in the
;  *    Help Viewer application. To be used when help books reside
;  *    outside of the known help folders (i.e. help books that are kept
;  *    inside of application bundles).
;  *  
;  *  Parameters:
;  *    
;  *    appBundleRef:
;  *      An FSRef pointer to the bundle within which one or more Help
;  *      books is stored. This is likely an FSRef to your application's
;  *      main bundle.
;  *  
;  *  Result:
;  *    An operating system result code that indicates whether all help
;  *    books contained within the specified bundle were registered.
;  *    Possible values: noErr, paramErr, kAHInternalErr, dirNFErr.
;  *  
;  *  Availability:
;  *    Mac OS X:         in version 10.0 and later in Carbon.framework
;  *    CarbonLib:        in CarbonLib 1.1 and later
;  *    Non-Carbon CFM:   not available
;  

(deftrap-inline "_AHRegisterHelpBook" 
   ((appBundleRef (:pointer :FSRef))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_0_AND_LATER
   :OSStatus
() )
; #ifdef __cplusplus
#| #|
}
#endif
|#
 |#

; #endif /* __APPLEHELP__ */


(provide-interface "AppleHelp")