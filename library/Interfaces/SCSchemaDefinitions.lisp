(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:SCSchemaDefinitions.h"
; at Sunday July 2,2006 7:31:33 pm.
; 
;  * Copyright (c) 2000-2003 Apple Computer, Inc. All rights reserved.
;  *
;  * @APPLE_LICENSE_HEADER_START@
;  * 
;  * This file contains Original Code and/or Modifications of Original Code
;  * as defined in and that are subject to the Apple Public Source License
;  * Version 2.0 (the 'License'). You may not use this file except in
;  * compliance with the License. Please obtain a copy of the License at
;  * http://www.opensource.apple.com/apsl/ and read it before using this
;  * file.
;  * 
;  * The Original Code and all software distributed under the License are
;  * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
;  * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
;  * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
;  * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
;  * Please see the License for the specific language governing rights and
;  * limitations under the License.
;  * 
;  * @APPLE_LICENSE_HEADER_END@
;  
; 
;  * This file is automatically generated
;  * DO NOT EDIT!
;  
; 
;  * Note: For Cocoa/Obj-C/Foundation programs accessing these preference
;  *       keys you may want to consider the following:
;  *
;  *       #define SC_SCHEMA_DECLARATION(x)		extern NSString * x
;  *       #import <SystemConfiguration/SystemConfiguration.h>
;  
; #ifndef _SCSCHEMADEFINITIONS_H
; #define _SCSCHEMADEFINITIONS_H
; #ifndef SC_SCHEMA_DECLARATION
; #ifndef SCSTR

(require-interface "CoreFoundation/CFString")
(defconstant $SC_SCHEMA_DECLARATION 0)
; #define SC_SCHEMA_DECLARATION(x)	extern const CFStringRef x
#| 
; #else

; #import <Foundation/NSString.h>
; #define SC_SCHEMA_DECLARATION(x)	extern NSString * x
 |#

; #endif


; #endif

; 
;  * Reserved Keys
;  
; 
;  * Generic Keys
;  
; 
;  * Preference Keys
;  
; 
;  * Component Keys
;  
; 
;  * Regex key which matches any component
;  
; 
;  * Network Entity Keys
;  
;  SC_SCHEMA_DECLARATION(kSCEntNetNIS);                         /* RESERVED FOR FUTURE USE */
; 
;  * kSCCompNetwork Properties
;  
; 
;  * kSCCompNetworkInterface Properties
;  
; 
;  * kSCCompNetworkHostNames Properties
;  
; 
;  * kSCEntNetAirPort (Hardware) Entity Keys
;  
;  kSCPropNetAirPortJoinMode values 
;  kSCPropNetAirPortPasswordEncryption values 
; 
;  * kSCEntNetAppleTalk Entity Keys
;  
;  kSCPropNetAppleTalkConfigMethod values 
; 
;  * kSCEntNetDNS Entity Keys
;  
; 
;  * kSCEntNetEthernet (Hardware) Entity Keys
;  
; 
;  * kSCEntNetFireWire (Hardware) Entity Keys
;  
;  RESERVED FOR FUTURE USE 
; 
;  * kSCEntNetInterface Entity Keys
;  
;  kSCPropNetInterfaceType values 
;  kSCPropNetServiceSubType values (for PPP) 
; 
;  * kSCEntNetIPv4 Entity Keys
;  
;  kSCPropNetIPv4ConfigMethod values 
; 
;  * kSCEntNetIPv6 Entity Keys
;  
;  kSCPropNetIPv6ConfigMethod values 
; 
;  * kSCEntNet6to4 Entity Keys
;  
; 
;  * kSCEntNetLink Entity Keys
;  
; 
;  * kSCEntNetModem (Hardware) Entity Keys
;  
;  kSCPropNetModemDialMode values 
; 
;  * kSCEntNetNetInfo Entity Keys
;  
;  kSCPropNetNetInfoBindingMethods values 
;  kSCPropNetNetInfoBroadcastServerTag default value 
; 
;  * kSCEntNetNIS Entity Keys
;  
;  RESERVED FOR FUTURE USE 
; 
;  * kSCEntNetPPP Entity Keys
;  
;  Auth: 
;  kSCPropNetPPPAuthPasswordEncryption values 
;  kSCPropNetPPPAuthPrompt values 
;  kSCPropNetPPPAuthProtocol values 
;  Comm: 
;  CCP: 
;  IPCP: 
;  LCP: 
; 
;  * kSCEntNetPPPoE Entity Keys
;  
;  RESERVED FOR FUTURE USE 
; 
;  * kSCEntNetPPPSerial Entity Keys
;  
;  RESERVED FOR FUTURE USE 
; 
;  * kSCEntNetPPTP Entity Keys
;  
;  RESERVED FOR FUTURE USE 
; 
;  * kSCEntNetL2TP Entity Keys
;  
;  kSCPropNetL2TPIPSecSharedSecretEncryption values 
;  kSCPropNetL2TPTransport values 
; 
;  * kSCEntNetProxies Entity Keys
;  
; 
;  kSCCompUsers Entity Keys
;  
; 
;  * kSCCompSystem Properties
;  
; 
;  * Configuration Store Definitions
;  
;  domain prefixes 
;  kSCDynamicStoreDomainSetup Properties 
;  Properties 
; 
;  * Obsolete schema definitions which will be removed "soon".
;  
; #ifndef  SCSTR

(require-interface "CoreFoundation/CFString")
; #define  SCSTR(s) CFSTR(s)

; #endif

; #define kSCPropUsersConsoleUserName              SCSTR("Name")                            /* CFString */
; #define kSCPropUsersConsoleUserUID               SCSTR("UID")                             /* CFNumber */
; #define kSCPropUsersConsoleUserGID               SCSTR("GID")                             /* CFNumber */

(require-interface "AvailabilityMacros")

; #if MAC_OS_X_VERSION_10_3 > MAC_OS_X_VERSION_MIN_REQUIRED

; #if MAC_OS_X_VERSION_10_1 <= MAC_OS_X_VERSION_MIN_REQUIRED

(require-interface "SystemConfiguration/SCSchemaDefinitions_10_1")

; #endif


; #endif


; #endif /* _SCSCHEMADEFINITIONS_H */


(provide-interface "SCSchemaDefinitions")