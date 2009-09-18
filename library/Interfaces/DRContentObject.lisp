(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:DRContentObject.h"
; at Sunday July 2,2006 7:27:37 pm.
; 
;      File:       DiscRecordingContent/DRContentObject.h
;  
;      Contains:   Base class for items used in file system creation.
;  
;      Version:    Technology: Mac OS X
;                  Release:    Mac OS X
;  
;      Copyright:  (c) 2002-2003 by Apple Computer, Inc., all rights reserved
;  
;      Bugs?:      For bug reports, consult the following page on
;                  the World Wide Web:
;  
;                      http://developer.apple.com/bugreporter/
;  
; 
; !
; 	@header DRContentObject
; 	
; 	This is the header file for the base file system object in Disc Recording's
; 	content-creation APIs.
; 	
; 	Content creation provides an interface for dynamic file system creation, allowing
; 	complex file-system hierarchies to be created and burned on-the-fly without having
; 	to generate a complete on-disk representation.
; 	
; 	The <tt>DRContentObject</tt> opaque type serves as a base for file and folder objects.	
; 
; #ifndef _H_DRContentObject
; #define _H_DRContentObject

; #if PRAGMA_ONCE
#| ; #pragma once
 |#

; #endif

; #ifndef __COREFOUNDATION__

(require-interface "CoreFoundation/CoreFoundation")

; #endif

; #ifndef __CORESERVICES__
#| #|
#include <CoreServicesCoreServices.h>
#endif
|#
 |#
; #ifndef _H_DRCoreObject
#| #|
#include <DiscRecordingEngineDRCoreObject.h>
#endif
|#
 |#
; #ifndef __AVAILABILITYMACROS__

(require-interface "AvailabilityMacros")

; #endif

; #ifdef __cplusplus
#| #|
extern "C" {
#endif
|#
 |#
; !
; 	@typedef DRFileRef
; 	@abstract			The type of a reference to a DRFile object.
; 

(def-mactype :DRFileRef (find-mactype '(:pointer :__DRFile)))
; !
; 	@typedef DRFolderRef
; 	@abstract			The type of a reference to a DRFolder object.
; 

(def-mactype :DRFolderRef (find-mactype '(:pointer :__DRFolder)))
; !
; 	@typedef DRFSObjectRef
; 	@abstract			A polymorphic type used for file and folder objects.
; 

(def-mactype :DRFSObjectRef (find-mactype ':DRTypeRef))

(def-mactype :DRFilesystemMask (find-mactype ':UInt32))
; !	@constant	kDRFilesystemMaskISO9660
; 		@abstract	The mask specifying the ISO-9660 file system.  

(defconstant $kDRFilesystemMaskISO9660 1)
; !	@constant	kDRFilesystemMaskJoliet
; 		@abstract	The mask specifying the Joliet file system, an extension to the ISO-9660 file system. 

(defconstant $kDRFilesystemMaskJoliet 2)
; ! @constant	kDRFilesystemMaskHFSPlus
; 		@abstract	The mask specifying the HFS+ file system.	

(defconstant $kDRFilesystemMaskHFSPlus 8)
; !	@constant	kDRFilesystemMaskDefault
; 		@abstract	The default, unrestricted mask for newly-created file or folder objects. 

(defconstant $kDRFilesystemMaskDefault #xFFFFFFFF)
; !	@function	DRFSObjectIsVirtual
; 	@abstract			Reports whether a file or folder object is real or virtual.
; 	@param		object	The file or folder object to query.
; 	@result				Returns <tt>TRUE</tt> if the object is virtual, <tt>FALSE</tt> otherwise.
; 

(deftrap-inline "_DRFSObjectIsVirtual" 
   ((object (:pointer :void))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   :Boolean
() )
; !	@function	DRFSObjectGetRealFSRef
; 	@abstract			Given a real (as opposed to virtual) file or folder object, obtains a 
; 						file-system reference to the on-disk file or folder.
; 	@param		object	The file or folder object to query.
; 	@param		fsRef	On success, contains a valid FSRef object.
; 

(deftrap-inline "_DRFSObjectGetRealFSRef" 
   ((object (:pointer :void))
    (fsRef (:pointer :FSRef))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   nil
() )
; !	@function	DRFSObjectCopyRealURL
; 	@abstract			Given a real (as opposed to virtual) file or folder object, obtains a 
; 						URL reference to the on-disk file or folder.
; 	@param		object	The file or folder object to query.
; 	@result				Returns a reference to a file URL that specifies the on-disk file or 
; 						folder, or <tt>NULL</tt> if the <tt>object</tt> parameter does not refer 
; 						to a real file or folder.
; 

(deftrap-inline "_DRFSObjectCopyRealURL" 
   ((objectRef (:pointer :void))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :__CFURL)
() )
; !	@function	DRFSObjectGetParent
; 	@abstract			Obtains a reference to the parent object, if any, of a given object 
; 						in a file/folder hierarchy.
; 	@param		object	The object reference to query.
; 	@result				Returns a reference to the object's parent, or <tt>NULL</tt> if there is no parent.
; 

(deftrap-inline "_DRFSObjectGetParent" 
   ((object (:pointer :void))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :__DRFolder)
() )
; !	@function	DRFSObjectCopyBaseName
; 	@abstract		Obtains the default (base) name for the file or folder object.
; 	@discussion		The default (base) name of a file or folder is the name from which 
; 					Disc Recording automatically generates file-system-specific names.  
; 				
; 					Disc Recording's content creation API can generate multiple file 
; 					systems, each of which may require its own naming conventions. To 
; 					accommodate this need, each file or folder object has a default 
; 					"base name" which the system alters as necessary to work with the 
; 					target file system.
; 						
; 					Whenever possible, Disc Recording uses the default name unmodified  
; 					in a generated file system. If the name cannot be used as-is (for example,
; 					if it contains illegal characters, exceeds name length limitations, 
; 					doesn't meet the required format, or a name collision is detected),
; 					then the Disc Recording engine automatically generates an acceptable
; 					name.
; 						
; 					The default name for a real file or folder is the on-disk name of
; 					the file or folder.
; 	@param	object	The file or folder object to query.
; 	@result			Returns a reference to a copy of the default (base) name.
; 

(deftrap-inline "_DRFSObjectCopyBaseName" 
   ((object (:pointer :void))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :__CFString)
() )
; !	@function	DRFSObjectCopySpecificName
; 	@abstract		Obtains a file-system-specific name for a file or folder object.
; 	@discussion		When using this function to generate a file-system-specific name, you
; 					must specify the <tt>fsKey</tt> parameter, as listed in 
; 					<tt>DRContentProperties.h</tt>, as either <tt>kDRISO9660LevelOne</tt> 
; 					for '8.3' names or <tt>kDRISO9660LevelTwo</tt> for 30-character names. You 
; 					cannot use the <tt>kDRISO9660</tt> constant because it does not 
; 					distinguish between the level-one and level-two ISO-9660 formats. Use 
; 					<tt>kDRISO9660</tt> only for accessing file and folder object
; 					properties with the <tt>DRFSObjectCopyProperty</tt> or 
; 					<tt>DRFSObjectCopyProperties</tt> functions.
; 					
; 	@param	object	The file or folder object to query.
; 	@param	fsKey	The name-access key for the requested file-system-specific name. Valid keys
; 					include <tt>kDRISO9660LevelOne</tt> for '8.3' names or <tt>kDRISO9660LevelTwo</tt>
; 					for 30-character names.
; 	@result			Returns a reference to a file-system-specific name.
; 

(deftrap-inline "_DRFSObjectCopySpecificName" 
   ((object (:pointer :void))
    (fsKey (:pointer :__CFString))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :__CFString)
() )
; !	@function	DRFSObjectCopySpecificNames
; 	@abstract		Obtains a dictionary containing the file-system-specific names
; 					for a file or folder object.
; 	@discussion		The dictionary obtained by this function will include only the names which 
; 					are to be used in a burn according to the object's effective mask.
; 	@param	object	The object reference to query.
; 	@result			Returns a dictionary of file-system-specific names. If the object's 
; 					effective mask is zero, an empty dictionary is returned. 
; 

(deftrap-inline "_DRFSObjectCopySpecificNames" 
   ((object (:pointer :void))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :__CFDictionary)
() )
; !	@function	DRFSObjectCopyMangledName
; 	@abstract		Obtains a file-system-specific name for a file or folder object, 
; 					modified for uniqueness.
; 	@discussion		The file or folder object's name string will be modified for uniqueness 
; 					considering its siblings. If the burn were to happen immediately after 
; 					this call, this is the name which would be used on the resulting disc.
; 				
; 					When using this function to obtain a modified name, you must specify
; 					the <tt>fsKey</tt> parameter, as listed in 
; 					<tt>DRContentProperties.h</tt>, as either <tt>kDRISO9660LevelOne</tt> 
; 					for '8.3' names or <tt>kDRISO9660LevelTwo</tt> for 30-character names. You 
; 					cannot use the <tt>kDRISO9660</tt> constant because it does not 
; 					distinguish between the level-one and level-two ISO-9660 formats. Use 
; 					<tt>kDRISO9660</tt> only for accessing file and folder object
; 					properties with the <tt>DRFSObjectCopyProperty</tt> or 
; 					<tt>DRFSObjectCopyProperties</tt> functions.
; 	@param	object	The object reference to query.
; 	@param	fsKey	The name-access key for the requested file-system-specific name. Valid keys
; 					include <tt>kDRISO9660LevelOne</tt> for '8.3' names or <tt>kDRISO9660LevelTwo</tt>
; 					for 30-character names.
; 	@result			Returns a reference to a file-system-specific name, modified as
; 					necessary for uniqueness.
; 

(deftrap-inline "_DRFSObjectCopyMangledName" 
   ((object (:pointer :void))
    (fsKey (:pointer :__CFString))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :__CFString)
() )
; !	@function	DRFSObjectCopyMangledNames
; 	@abstract		Obtains a dictionary containing all of the file-system-specific names
; 					for a given object, each one modified for uniqueness.
; 	@discussion		The dictionary will return only the names which are indicated by the
; 					object's effective mask.  If the object's effective mask is zero, an
; 					empty dictionary is returned.
; 	@param	object	The file or folder object reference to query.
; 	@result			Returns a reference to a dictionary of names, each one modified as 
; 					necessary for uniqueness.
; 

(deftrap-inline "_DRFSObjectCopyMangledNames" 
   ((object (:pointer :void))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :__CFDictionary)
() )
; !	@function	DRFSObjectCopyFilesystemProperty
; 	@abstract			Obtains a property for a file or folder object.
; 	@param	object		The object reference to query.
; 	@param	fsKey		File system to query.
; 	@param	propertyKey	The property to query.
; 	@param	coalesce	If <tt>TRUE</tt> and if the property isn't found in the requested 
; 						file-system dictionary, this function will go on to check the 
; 						"all filesystems" properties dictionary.
; 	@result				Returns a reference to a property, or <tt>NULL</tt> if not found.
; 

(deftrap-inline "_DRFSObjectCopyFilesystemProperty" 
   ((object (:pointer :void))
    (fsKey (:pointer :__CFString))
    (propertyKey (:pointer :__CFString))
    (coalesce :Boolean)
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :void)
() )
; !	@function	DRFSObjectCopyFilesystemProperties
; 	@abstract			Obtains a dictionary of file system properties for a given 
; 						file or folder object.
; 	@param	object		Object reference to query.
; 	@param	fsKey		The file system to query.
; 	@param	coalesce	If <tt>TRUE</tt>, this function will also get the "all filesystems" 
; 						properties dictionary and merge it with the requested file-system 
; 						dictionary.
; 	@result				Returns a reference to a file or folder object's properties 
; 						dictionary, or <tt>NULL</tt> if no properties have been set.
; 

(deftrap-inline "_DRFSObjectCopyFilesystemProperties" 
   ((object (:pointer :void))
    (fsKey (:pointer :__CFString))
    (coalesce :Boolean)
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   (:pointer :__CFDictionary)
() )
; !
; 	@function	DRFSObjectGetFilesystemMask
; 	@abstract		Obtains the mask indicating in which file systems a file or folder 
; 					object should appear.
; 	
; 	@discussion		If you want all the file systems on a target disc -- such as HFS+ and
; 					ISO-9660 -- to have the same data, you do not have to set an explicit 
; 					mask for anything but the root folder. And since Disc Recording 
; 					automatically assigns a reasonable default mask to the root if none 
; 					is provided, in most cases you do not even have to set an explicit 
; 					root-folder mask.
; 					
; 					With Disc Recording's file masking system you can specify which items
; 					in a source file structure will appear in various generated file 
; 					structures when burning to disc. For example, you may want a Mac OS
; 					application file or bundle to appear only in an HFS+ tree, and may 
; 					want a .EXE file to appear only in a Joliet tree.
; 	
; 					File-system-specific suppression is handled through the file or folder
; 					object's file-system mask, a bit field in which a 1 indicates the 
; 					object will appear in the corresponding file system, and 0 indicates 
; 					it will not appear.  Masks can define arbitrarily complex trees. In 
; 					the extreme case, each file system can have its own unique, disjoint
; 					tree. Such discs, however, may be confusing to the user.
; 					
; 					A file or folder object can be considered to have two mask values.  The 
; 					first is the explicit mask, set by the client unless it is simply 
; 					the default value of <tt>kDRFilesystemMaskDefault</tt>, with all bits set 
; 					to 1.  The other is the effective mask, which is a derived mask used  
; 					during a burn.
; 					
; 					The Disc Recording engine implements the following rules prior to a burn 
; 					to derive the effective mask:
; 	
; 				<ul>
; 				<li>A file or folder object's effective mask is equal to the bitwise AND of the 
; 					object's explicit mask and its parent's effective mask.</li>
; 					
; 				<li>An effective mask of 0 removes an object from all file systems. It will
; 					not be included in the burn.</li>
; 				</ul>
; 	
; 					For example, an explicit mask of 0 forces an effective mask of 0, and an
; 					explicit mask of <tt>kDRFilesystemMaskDefault</tt> implies an effective mask
; 					equal to the parent's effective mask.
; 					
; 					For an object to appear in a file system, its parent folder, and all 
; 					ancestors, up to the root, must also be in the file system.
; 	
; 					When the burn is performed, Disc Recording performs a few additional steps in determining
; 					the file and folder layouts for each file system.
; 					
; 				<ul>
; 				<li>If your client gives the root folder has an explicit mask of 
; 					<tt>kDRFilesystemMaskDefault</tt>, Disc Recording will assign to the root 
; 					folder a default explicit mask of its own choosing in an attempt to produce 
; 					the most cross-platform-compatible disc.
; 					
; 					This automatically-selected default root mask depends, among other factors,
; 					on the type of media to be burned -- CD or DVD.
; 					
; 					If you need to generate layouts for specific file systems, you should
; 					always set a non-default explicit mask for the root folder.
; 					
; 					Assigning the root folder a mask of 0 results in undefined behavior.</li>
; 					
; 				<li>If your client gives every file and folder object in your source layout an 
; 					explicit mask of <tt>kDRFilesystemMaskDefault</tt>, then every object will
; 					inherit the mask that Disc Recording chooses for the root folder.</li>
; 					
; 				<li>If you set the root folder's mask to a file system that is dependent on 
; 					another file system not in the mask, Disc Recording resolves the conflict 
; 					by enabling the required file system.
; 					
; 					For example, the Joliet file system requires ISO-9660.  If the root 
; 					folder's mask is <tt>kDRFilesystemMaskJoliet</tt> only, Disc Recording 
; 					will automatically enable <tt>kDRFilesystemMaskISO9660</tt> as well.</li>
; 				
; 				<li>If the root folder's mask requests a file system that cannot coexist with 
; 					another requested file system, Disc Recording resolves the conflict by 
; 					disabling one of the conflicting file systems. This is not currently an 
; 					issue, since no pairs of file systems that can be currently generated are  
; 					mutually exclusive.
; 					
; 					(To provide a hypothetical example of this behavior:  If Disc Recording 
; 					supported both HFS and HFS+ in a mutually exclusive manner, and the root 
; 					folder had a mask that enabled both, the burn engine would automatically 
; 					disable HFS in favor of HFS+.)</li>
; 				</ul>
; 					
; 
; 	@param	object				The file or folder object to query.
; 	@param	outExplicitMask		On output, contains the object's explicit mask. May be 
; 								<tt>NULL</tt> on input.
; 	@param	outEffectiveMask	On output, contains the object's effective mask. May be 
; 								<tt>NULL</tt> on input.
; 	@result			For convenience, the file or folder object's effective mask is returned.
; 

(deftrap-inline "_DRFSObjectGetFilesystemMask" 
   ((object (:pointer :void))
    (explicitMask (:pointer :DRFILESYSTEMMASK))
    (effectiveMask (:pointer :DRFILESYSTEMMASK))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   :UInt32
() )
; !	@function	DRFSObjectSetBaseName
; 	@abstract		Sets the base name for a file or folder object.
; 	@discussion		The default (base) name of a file or folder is the name from which 
; 					Disc Recording automatically generates file-system-specific names.  
; 				
; 					Disc Recording's content creation API can generate multiple file systems,
; 					each of which may have its own naming conventions. Whenever possible, the 
; 					base name will be used without modification in a generated file system.
; 				
; 					If the base name cannot be used as-is (if, for example, it
; 					contains illegal characters, exceeds the length requirements, doesn't
; 					meet the required format, or a name collision is detected), then Disc Recording
; 					automatically derives an acceptable name that meets the file system's criteria.
; 				
; 					Changing a file or folder object's base name will remove any file-system-specific
; 					name overrides that may have been set in the object's names dictionary.
; 	@param	object		A reference to the file or folder object to modify.
; 	@param	baseName	A reference to the new name for the object.
; 

(deftrap-inline "_DRFSObjectSetBaseName" 
   ((object (:pointer :void))
    (baseName (:pointer :__CFString))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   nil
() )
; !	@function	DRFSObjectSetSpecificName
; 	@abstract		Changes a file-system-specific name for a file or folder object.
; 	@discussion		Disc Recording attempts to use the default (base) name of a file or
; 					folder object. If the default name is illegal, however, Disc Recording
; 					modifies it to fit the rules for the file system specified with the 
; 					<tt>fsKey</tt> parameter. 
; 				
; 					To ensure that you are always displaying the most current name to the user,
; 					always follow a call to this function with a call to 
; 					<tt>DRFSObjectCopySpecificName</tt>.
; 	@param	object	A reference to the file or folder object to modify.
; 	@param	fsKey	The name-access key for the file-system-specific name you are changing. Valid keys
; 					include <tt>kDRISO9660LevelOne</tt> for '8.3' names or <tt>kDRISO9660LevelTwo</tt>
; 					for 30-character names.
; 	@param	specificName	The name to apply to the file or folder object.
; 

(deftrap-inline "_DRFSObjectSetSpecificName" 
   ((object (:pointer :void))
    (fsKey (:pointer :__CFString))
    (specificName (:pointer :__CFString))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   nil
() )
; !	@function	DRFSObjectSetSpecificNames
; 	@abstract		Changes all the file-system-specific names for a file or folder object.
; 	@discussion		Disc Recording attempts to use the default (base) names of a file or
; 					folder object. If any of the default names are illegal, however, Disc Recording
; 					modifies them to fit the rules for the file system specified with the 
; 					<tt>fsKey</tt> parameter. 
; 				
; 					To ensure that you are always displaying the most current name to the user,
; 					always follow a call to this function with a call to 
; 					<tt>DRFSObjectCopySpecificNames</tt>.
; 	@param	object			A reference to the file or folder object to modify.
; 	@param	specificNames	The dictionary containing the names to apply to the file or folder object.
; 

(deftrap-inline "_DRFSObjectSetSpecificNames" 
   ((object (:pointer :void))
    (specificNames (:pointer :__CFDictionary))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   nil
() )
; !
; 	@function	DRFSObjectSetFilesystemProperty
; 	@abstract				Sets a file-system-specific property for a file or folder object.
; 	@param	object			A reference to the file or folder object to modify.
; 	@param	fsKey			The file-system for the object property you want to modify.
; 	@param	propertyKey		The property you want to modify.
; 	@param	value			The new value for the property.
; 

(deftrap-inline "_DRFSObjectSetFilesystemProperty" 
   ((object (:pointer :void))
    (fsKey (:pointer :__CFString))
    (propertyKey (:pointer :__CFString))
    (value (:pointer :void))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   nil
() )
; !
; 	@function	DRFSObjectSetFilesystemProperties
; 	@abstract			Changes file-system properties for a file or folder object.
; 	@param	object		A reference to the file or folder object to modify.
; 	@param	fsKey		The file-system for the object properties you want to modify.
; 	@param	properties	A reference to the dictionary of properties to set.
; 

(deftrap-inline "_DRFSObjectSetFilesystemProperties" 
   ((object (:pointer :void))
    (fsKey (:pointer :__CFString))
    (properties (:pointer :__CFDictionary))
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   nil
() )
; !
; 	@function	DRFSObjectSetFilesystemMask
; 	@abstract			Sets the explicit mask for a file or folder object, indicating in 
; 						which file systems this object should appear.
; 	@discussion			Refer to the discussion for <tt>DRFSObjectGetFilesystemMask</tt> 
; 						for an explanation of explicit and effective masks.
; 	@param	object		A reference to the file or folder object to modify.
; 	@param	newMask		The new explicit mask to use.
; 

(deftrap-inline "_DRFSObjectSetFilesystemMask" 
   ((object (:pointer :void))
    (newMask :UInt32)
   )                                            ; AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
   nil
() )
; #ifdef __cplusplus
#| #|
}
#endif
|#
 |#

; #endif /* _H_DRContentObject */


(provide-interface "DRContentObject")