(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:config.h"
; at Sunday July 2,2006 7:27:15 pm.
; 
;   Automatically generated by 'make config' -- don't edit!
; 
;   Actually, for Mac OS X this was hand edited :-)
; 
; 
; #ifndef _PCMCIA_CONFIG_H
; #define _PCMCIA_CONFIG_H
; #define AUTOCONF_INCLUDED
; #define __IN_PCMCIA_PACKAGE__
(defconstant $__MACOSX__ 1)
; #define __MACOSX__ 1
; #undef	LINUX				//macosx
; #undef	PREFIX
(defconstant $CC "gcc")
; #define CC "gcc"
(defconstant $LD "ld")
; #define LD "ld"
(defconstant $KFLAGS "")
; #define KFLAGS ""
(defconstant $UFLAGS "")
; #define UFLAGS ""
(defconstant $PCDEBUG "")
; #define PCDEBUG ""
; #undef	USE_PM
; #undef 	UNSAFE_TOOLS
(defconstant $CONFIG_CARDBUS 1)
; #define	CONFIG_CARDBUS 1
(defconstant $CONFIG_PNP_BIOS 1)
; #define CONFIG_PNP_BIOS 1
; #undef	MODDIR
; #undef	HAVE_MEMRESERVE 1
;  Options from current kernel 
; #undef	CONFIG_MODULES 1
(defconstant $CONFIG_SMP 1)
; #define	CONFIG_SMP 1
(defconstant $CONFIG_PCI 1)
; #define CONFIG_PCI 1
(defconstant $CONFIG_PCI_QUIRKS 1)
; #define CONFIG_PCI_QUIRKS 1
; #undef	CONFIG_PM 1
(defconstant $CONFIG_SCSI 1)
; #define CONFIG_SCSI 1
; #undef  CONFIG_IEEE1394
(defconstant $CONFIG_INET 1)
; #define CONFIG_INET 1
(defconstant $CONFIG_NET_PCMCIA_RADIO 1)
; #define CONFIG_NET_PCMCIA_RADIO 1
(defconstant $CONFIG_TR 1)
; #define CONFIG_TR 1
; #undef  CONFIG_NET_FASTROUTE
; #undef  CONFIG_NET_DIVERT
(defconstant $CONFIG_MODVERSIONS 1)
; #define CONFIG_MODVERSIONS 1
(defconstant $CONFIG_X86_L1_CACHE_BYTES 32)
; #define CONFIG_X86_L1_CACHE_BYTES 32
(defconstant $CONFIG_X86_L1_CACHE_SHIFT 5)
; #define CONFIG_X86_L1_CACHE_SHIFT 5
(defconstant $CONFIG_PROC_FS 1)
; #define CONFIG_PROC_FS 1
(defconstant $CONFIG_1GB 1)
; #define CONFIG_1GB 1
; #undef  CONFIG_2GB
; #undef  CONFIG_3GB
(defconstant $ARCH "ppc")
; #define ARCH "ppc"
(defconstant $HOST_ARCH "ppc")
; #define HOST_ARCH "ppc"
(defconstant $AFLAGS "")
; #define AFLAGS ""
; #undef	CONFIG_ISA			//macosx
; #undef	HAS_PROC_BUS			//macosx
; #undef	SYSV_INIT
; #undef  HAS_FORMS

; #endif /* _PCMCIA_CONFIG_H */


(provide-interface "config")