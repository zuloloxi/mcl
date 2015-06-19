(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:cssmerr.h"
; at Sunday July 2,2006 7:27:29 pm.
; 
;  * Copyright (c) 2000-2001 Apple Computer, Inc. All Rights Reserved.
;  * 
;  * The contents of this file constitute Original Code as defined in and are
;  * subject to the Apple Public Source License Version 1.2 (the 'License').
;  * You may not use this file except in compliance with the License. Please obtain
;  * a copy of the License at http://www.apple.com/publicsource and read it before
;  * using this file.
;  * 
;  * This Original Code and all software distributed under the License are
;  * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS
;  * OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES, INCLUDING WITHOUT
;  * LIMITATION, ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
;  * PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT. Please see the License for the
;  * specific language governing rights and limitations under the License.
;  
; 
;    File:      cssmerr.h
; 
;    Contains:  Error Code Definitions for CSSM
; 
;    Copyright: (c) 1999-2000 Apple Computer, Inc., all rights reserved.
; 
; #ifndef _CSSMERR_H_
(defconstant $_CSSMERR_H_ 1)
; #define _CSSMERR_H_  1
; #ifdef __cplusplus
#| #|
extern "C" {
#endif
|#
 |#
;  Common error codes. 
;  0x80010000 

(defconstant $CSSM_BASE_ERROR -2147418112)

(defconstant $CSSM_ERRORCODE_MODULE_EXTENT #x800)
(defconstant $CSSM_ERRORCODE_CUSTOM_OFFSET #x400)
(defconstant $CSSM_ERRORCODE_COMMON_EXTENT #x100)
;  Macros for convertible error code manipulation. 
; #define CSSM_ERRCODE(CODE) 	(((CODE) - CSSM_BASE_ERROR) & (CSSM_ERRORCODE_MODULE_EXTENT - 1)) 
; #define CSSM_ERRBASE(CODE) 	((((CODE) - CSSM_BASE_ERROR) & ~(CSSM_ERRORCODE_MODULE_EXTENT - 1)) + CSSM_BASE_ERROR) 
; #define CSSM_ERR_IS_CONVERTIBLE(CODE) 	(CSSM_ERRCODE(CODE) < CSSM_ERRORCODE_COMMON_EXTENT)
; #define CSSM_ERR_TAG(CODE, BASE) 	(CSSM_ERRCODE(CODE) + (BASE))
;  Error Bases for different module types. 

(defconstant $CSSM_CSSM_BASE_ERROR -2147418112)
(defconstant $CSSM_CSSM_PRIVATE_ERROR -2147417088)
(defconstant $CSSM_CSP_BASE_ERROR -2147416064)
(defconstant $CSSM_CSP_PRIVATE_ERROR -2147415040)
(defconstant $CSSM_DL_BASE_ERROR -2147414016)
(defconstant $CSSM_DL_PRIVATE_ERROR -2147412992)
(defconstant $CSSM_CL_BASE_ERROR -2147411968)
(defconstant $CSSM_CL_PRIVATE_ERROR -2147410944)
(defconstant $CSSM_TP_BASE_ERROR -2147409920)
(defconstant $CSSM_TP_PRIVATE_ERROR -2147408896)
(defconstant $CSSM_KR_BASE_ERROR -2147407872)
(defconstant $CSSM_KR_PRIVATE_ERROR -2147406848)
(defconstant $CSSM_AC_BASE_ERROR -2147405824)
(defconstant $CSSM_AC_PRIVATE_ERROR -2147404800)
;  XXX @@@ MDS Error Bases same as DL for now. 

(defconstant $CSSM_MDS_BASE_ERROR -2147414016)
(defconstant $CSSM_MDS_PRIVATE_ERROR -2147412992)
;  General Error Values. 

(defconstant $CSSMERR_CSSM_INVALID_ADDIN_HANDLE -2147417855)
(defconstant $CSSMERR_CSSM_NOT_INITIALIZED -2147417854)
(defconstant $CSSMERR_CSSM_INVALID_HANDLE_USAGE -2147417853)
(defconstant $CSSMERR_CSSM_PVC_REFERENT_NOT_FOUND -2147417852)
(defconstant $CSSMERR_CSSM_FUNCTION_INTEGRITY_FAIL -2147417851)
;  Common Error Codes For All Module Types. 

(defconstant $CSSM_ERRCODE_INTERNAL_ERROR 1)
(defconstant $CSSM_ERRCODE_MEMORY_ERROR 2)
(defconstant $CSSM_ERRCODE_MDS_ERROR 3)
(defconstant $CSSM_ERRCODE_INVALID_POINTER 4)
(defconstant $CSSM_ERRCODE_INVALID_INPUT_POINTER 5)
(defconstant $CSSM_ERRCODE_INVALID_OUTPUT_POINTER 6)
(defconstant $CSSM_ERRCODE_FUNCTION_NOT_IMPLEMENTED 7)
(defconstant $CSSM_ERRCODE_SELF_CHECK_FAILED 8)
(defconstant $CSSM_ERRCODE_OS_ACCESS_DENIED 9)
(defconstant $CSSM_ERRCODE_FUNCTION_FAILED 10)
(defconstant $CSSM_ERRCODE_MODULE_MANIFEST_VERIFY_FAILED 11)
(defconstant $CSSM_ERRCODE_INVALID_GUID 12)
;  Common Error Codes for ACLs 

(defconstant $CSSM_ERRCODE_OPERATION_AUTH_DENIED 32)
(defconstant $CSSM_ERRCODE_OBJECT_USE_AUTH_DENIED 33)
(defconstant $CSSM_ERRCODE_OBJECT_MANIP_AUTH_DENIED 34)
(defconstant $CSSM_ERRCODE_OBJECT_ACL_NOT_SUPPORTED 35)
(defconstant $CSSM_ERRCODE_OBJECT_ACL_REQUIRED 36)
(defconstant $CSSM_ERRCODE_INVALID_ACCESS_CREDENTIALS 37)
(defconstant $CSSM_ERRCODE_INVALID_ACL_BASE_CERTS 38)
(defconstant $CSSM_ERRCODE_ACL_BASE_CERTS_NOT_SUPPORTED 39)
(defconstant $CSSM_ERRCODE_INVALID_SAMPLE_VALUE 40)
(defconstant $CSSM_ERRCODE_SAMPLE_VALUE_NOT_SUPPORTED 41)
(defconstant $CSSM_ERRCODE_INVALID_ACL_SUBJECT_VALUE 42)
(defconstant $CSSM_ERRCODE_ACL_SUBJECT_TYPE_NOT_SUPPORTED 43)
(defconstant $CSSM_ERRCODE_INVALID_ACL_CHALLENGE_CALLBACK 44)
(defconstant $CSSM_ERRCODE_ACL_CHALLENGE_CALLBACK_FAILED 45)
(defconstant $CSSM_ERRCODE_INVALID_ACL_ENTRY_TAG 46)
(defconstant $CSSM_ERRCODE_ACL_ENTRY_TAG_NOT_FOUND 47)
(defconstant $CSSM_ERRCODE_INVALID_ACL_EDIT_MODE 48)
(defconstant $CSSM_ERRCODE_ACL_CHANGE_FAILED 49)
(defconstant $CSSM_ERRCODE_INVALID_NEW_ACL_ENTRY 50)
(defconstant $CSSM_ERRCODE_INVALID_NEW_ACL_OWNER 51)
(defconstant $CSSM_ERRCODE_ACL_DELETE_FAILED 52)
(defconstant $CSSM_ERRCODE_ACL_REPLACE_FAILED 53)
(defconstant $CSSM_ERRCODE_ACL_ADD_FAILED 54)
;  Common Error Codes for Specific Data Types 

(defconstant $CSSM_ERRCODE_INVALID_CONTEXT_HANDLE 64)
(defconstant $CSSM_ERRCODE_INCOMPATIBLE_VERSION 65)
(defconstant $CSSM_ERRCODE_INVALID_CERTGROUP_POINTER 66)
(defconstant $CSSM_ERRCODE_INVALID_CERT_POINTER 67)
(defconstant $CSSM_ERRCODE_INVALID_CRL_POINTER 68)
(defconstant $CSSM_ERRCODE_INVALID_FIELD_POINTER 69)
(defconstant $CSSM_ERRCODE_INVALID_DATA 70)
(defconstant $CSSM_ERRCODE_CRL_ALREADY_SIGNED 71)
(defconstant $CSSM_ERRCODE_INVALID_NUMBER_OF_FIELDS 72)
(defconstant $CSSM_ERRCODE_VERIFICATION_FAILURE 73)
(defconstant $CSSM_ERRCODE_INVALID_DB_HANDLE 74)
(defconstant $CSSM_ERRCODE_PRIVILEGE_NOT_GRANTED 75)
(defconstant $CSSM_ERRCODE_INVALID_DB_LIST 76)
(defconstant $CSSM_ERRCODE_INVALID_DB_LIST_POINTER 77)
(defconstant $CSSM_ERRCODE_UNKNOWN_FORMAT 78)
(defconstant $CSSM_ERRCODE_UNKNOWN_TAG 79)
(defconstant $CSSM_ERRCODE_INVALID_CSP_HANDLE 80)
(defconstant $CSSM_ERRCODE_INVALID_DL_HANDLE 81)
(defconstant $CSSM_ERRCODE_INVALID_CL_HANDLE 82)
(defconstant $CSSM_ERRCODE_INVALID_TP_HANDLE 83)
(defconstant $CSSM_ERRCODE_INVALID_KR_HANDLE 84)
(defconstant $CSSM_ERRCODE_INVALID_AC_HANDLE 85)
(defconstant $CSSM_ERRCODE_INVALID_PASSTHROUGH_ID 86)
(defconstant $CSSM_ERRCODE_INVALID_NETWORK_ADDR 87)
(defconstant $CSSM_ERRCODE_INVALID_CRYPTO_DATA 88)
;  CSSM Error Values Derived from Common Error Codes For All Module Types. 

(defconstant $CSSMERR_CSSM_INTERNAL_ERROR -2147418111)
(defconstant $CSSMERR_CSSM_MEMORY_ERROR -2147418110)
(defconstant $CSSMERR_CSSM_MDS_ERROR -2147418109)
(defconstant $CSSMERR_CSSM_INVALID_POINTER -2147418108)
(defconstant $CSSMERR_CSSM_INVALID_INPUT_POINTER -2147418107)
(defconstant $CSSMERR_CSSM_INVALID_OUTPUT_POINTER -2147418106)
(defconstant $CSSMERR_CSSM_FUNCTION_NOT_IMPLEMENTED -2147418105)
(defconstant $CSSMERR_CSSM_SELF_CHECK_FAILED -2147418104)
(defconstant $CSSMERR_CSSM_OS_ACCESS_DENIED -2147418103)
(defconstant $CSSMERR_CSSM_FUNCTION_FAILED -2147418102)
(defconstant $CSSMERR_CSSM_MODULE_MANIFEST_VERIFY_FAILED -2147418101)
(defconstant $CSSMERR_CSSM_INVALID_GUID -2147418100)
;  CSSM Error Values for Specific Data Types. 

(defconstant $CSSMERR_CSSM_INVALID_CONTEXT_HANDLE -2147418048)
(defconstant $CSSMERR_CSSM_INCOMPATIBLE_VERSION -2147418047)
(defconstant $CSSMERR_CSSM_PRIVILEGE_NOT_GRANTED -2147418037)
;  CSSM Module-Specific Error Values 

(defconstant $CSSM_CSSM_BASE_CSSM_ERROR -2147417840)
(defconstant $CSSMERR_CSSM_SCOPE_NOT_SUPPORTED -2147417839)
(defconstant $CSSMERR_CSSM_PVC_ALREADY_CONFIGURED -2147417838)
(defconstant $CSSMERR_CSSM_INVALID_PVC -2147417837)
(defconstant $CSSMERR_CSSM_EMM_LOAD_FAILED -2147417836)
(defconstant $CSSMERR_CSSM_EMM_UNLOAD_FAILED -2147417835)
(defconstant $CSSMERR_CSSM_ADDIN_LOAD_FAILED -2147417834)
(defconstant $CSSMERR_CSSM_INVALID_KEY_HIERARCHY -2147417833)
(defconstant $CSSMERR_CSSM_ADDIN_UNLOAD_FAILED -2147417832)
(defconstant $CSSMERR_CSSM_LIB_REF_NOT_FOUND -2147417831)
(defconstant $CSSMERR_CSSM_INVALID_ADDIN_FUNCTION_TABLE -2147417830)
(defconstant $CSSMERR_CSSM_EMM_AUTHENTICATE_FAILED -2147417829)
(defconstant $CSSMERR_CSSM_ADDIN_AUTHENTICATE_FAILED -2147417828)
(defconstant $CSSMERR_CSSM_INVALID_SERVICE_MASK -2147417827)
(defconstant $CSSMERR_CSSM_MODULE_NOT_LOADED -2147417826)
(defconstant $CSSMERR_CSSM_INVALID_SUBSERVICEID -2147417825)
(defconstant $CSSMERR_CSSM_BUFFER_TOO_SMALL -2147417824)
(defconstant $CSSMERR_CSSM_INVALID_ATTRIBUTE -2147417823)
(defconstant $CSSMERR_CSSM_ATTRIBUTE_NOT_IN_CONTEXT -2147417822)
(defconstant $CSSMERR_CSSM_MODULE_MANAGER_INITIALIZE_FAIL -2147417821)
(defconstant $CSSMERR_CSSM_MODULE_MANAGER_NOT_FOUND -2147417820)
(defconstant $CSSMERR_CSSM_EVENT_NOTIFICATION_CALLBACK_NOT_FOUND -2147417819)
;  CSP Error Values Derived from Common Error Codes For All Module Types. 

(defconstant $CSSMERR_CSP_INTERNAL_ERROR -2147416063)
(defconstant $CSSMERR_CSP_MEMORY_ERROR -2147416062)
(defconstant $CSSMERR_CSP_MDS_ERROR -2147416061)
(defconstant $CSSMERR_CSP_INVALID_POINTER -2147416060)
(defconstant $CSSMERR_CSP_INVALID_INPUT_POINTER -2147416059)
(defconstant $CSSMERR_CSP_INVALID_OUTPUT_POINTER -2147416058)
(defconstant $CSSMERR_CSP_FUNCTION_NOT_IMPLEMENTED -2147416057)
(defconstant $CSSMERR_CSP_SELF_CHECK_FAILED -2147416056)
(defconstant $CSSMERR_CSP_OS_ACCESS_DENIED -2147416055)
(defconstant $CSSMERR_CSP_FUNCTION_FAILED -2147416054)
;  CSP Error Values Derived from ACL-based Error Codes. 

(defconstant $CSSMERR_CSP_OPERATION_AUTH_DENIED -2147416032)
(defconstant $CSSMERR_CSP_OBJECT_USE_AUTH_DENIED -2147416031)
(defconstant $CSSMERR_CSP_OBJECT_MANIP_AUTH_DENIED -2147416030)
(defconstant $CSSMERR_CSP_OBJECT_ACL_NOT_SUPPORTED -2147416029)
(defconstant $CSSMERR_CSP_OBJECT_ACL_REQUIRED -2147416028)
(defconstant $CSSMERR_CSP_INVALID_ACCESS_CREDENTIALS -2147416027)
(defconstant $CSSMERR_CSP_INVALID_ACL_BASE_CERTS -2147416026)
(defconstant $CSSMERR_CSP_ACL_BASE_CERTS_NOT_SUPPORTED -2147416025)
(defconstant $CSSMERR_CSP_INVALID_SAMPLE_VALUE -2147416024)
(defconstant $CSSMERR_CSP_SAMPLE_VALUE_NOT_SUPPORTED -2147416023)
(defconstant $CSSMERR_CSP_INVALID_ACL_SUBJECT_VALUE -2147416022)
(defconstant $CSSMERR_CSP_ACL_SUBJECT_TYPE_NOT_SUPPORTED -2147416021)
(defconstant $CSSMERR_CSP_INVALID_ACL_CHALLENGE_CALLBACK -2147416020)
(defconstant $CSSMERR_CSP_ACL_CHALLENGE_CALLBACK_FAILED -2147416019)
(defconstant $CSSMERR_CSP_INVALID_ACL_ENTRY_TAG -2147416018)
(defconstant $CSSMERR_CSP_ACL_ENTRY_TAG_NOT_FOUND -2147416017)
(defconstant $CSSMERR_CSP_INVALID_ACL_EDIT_MODE -2147416016)
(defconstant $CSSMERR_CSP_ACL_CHANGE_FAILED -2147416015)
(defconstant $CSSMERR_CSP_INVALID_NEW_ACL_ENTRY -2147416014)
(defconstant $CSSMERR_CSP_INVALID_NEW_ACL_OWNER -2147416013)
(defconstant $CSSMERR_CSP_ACL_DELETE_FAILED -2147416012)
(defconstant $CSSMERR_CSP_ACL_REPLACE_FAILED -2147416011)
(defconstant $CSSMERR_CSP_ACL_ADD_FAILED -2147416010)
;  CSP Error Values for Specific Data Types. 

(defconstant $CSSMERR_CSP_INVALID_CONTEXT_HANDLE -2147416000)
(defconstant $CSSMERR_CSP_PRIVILEGE_NOT_GRANTED -2147415989)
(defconstant $CSSMERR_CSP_INVALID_DATA -2147415994)
(defconstant $CSSMERR_CSP_INVALID_PASSTHROUGH_ID -2147415978)
(defconstant $CSSMERR_CSP_INVALID_CRYPTO_DATA -2147415976)
;  CSP Module-Specific Error Values 
;  General CSP Error Values 

(defconstant $CSSM_CSP_BASE_CSP_ERROR -2147415808)
(defconstant $CSSMERR_CSP_INPUT_LENGTH_ERROR -2147415807)
(defconstant $CSSMERR_CSP_OUTPUT_LENGTH_ERROR -2147415806)
(defconstant $CSSMERR_CSP_PRIVILEGE_NOT_SUPPORTED -2147415805)
(defconstant $CSSMERR_CSP_DEVICE_ERROR -2147415804)
(defconstant $CSSMERR_CSP_DEVICE_MEMORY_ERROR -2147415803)
(defconstant $CSSMERR_CSP_ATTACH_HANDLE_BUSY -2147415802)
(defconstant $CSSMERR_CSP_NOT_LOGGED_IN -2147415801)
(defconstant $CSSMERR_CSP_INVALID_KEY -2147415792)
(defconstant $CSSMERR_CSP_INVALID_KEY_REFERENCE -2147415791)
(defconstant $CSSMERR_CSP_INVALID_KEY_CLASS -2147415790)
(defconstant $CSSMERR_CSP_ALGID_MISMATCH -2147415789)
(defconstant $CSSMERR_CSP_KEY_USAGE_INCORRECT -2147415788)
(defconstant $CSSMERR_CSP_KEY_BLOB_TYPE_INCORRECT -2147415787)
(defconstant $CSSMERR_CSP_KEY_HEADER_INCONSISTENT -2147415786)
(defconstant $CSSMERR_CSP_UNSUPPORTED_KEY_FORMAT -2147415785)
(defconstant $CSSMERR_CSP_UNSUPPORTED_KEY_SIZE -2147415784)
(defconstant $CSSMERR_CSP_INVALID_KEY_POINTER -2147415783)
(defconstant $CSSMERR_CSP_INVALID_KEYUSAGE_MASK -2147415782)
(defconstant $CSSMERR_CSP_UNSUPPORTED_KEYUSAGE_MASK -2147415781)
(defconstant $CSSMERR_CSP_INVALID_KEYATTR_MASK -2147415780)
(defconstant $CSSMERR_CSP_UNSUPPORTED_KEYATTR_MASK -2147415779)
(defconstant $CSSMERR_CSP_INVALID_KEY_LABEL -2147415778)
(defconstant $CSSMERR_CSP_UNSUPPORTED_KEY_LABEL -2147415777)
(defconstant $CSSMERR_CSP_INVALID_KEY_FORMAT -2147415776);  CSP Vector of Buffers Error Values. 

(defconstant $CSSMERR_CSP_INVALID_DATA_COUNT -2147415768)
(defconstant $CSSMERR_CSP_VECTOR_OF_BUFS_UNSUPPORTED -2147415767)
(defconstant $CSSMERR_CSP_INVALID_INPUT_VECTOR -2147415766)
(defconstant $CSSMERR_CSP_INVALID_OUTPUT_VECTOR -2147415765);  CSP Cryptographic Context Error Values. 

(defconstant $CSSMERR_CSP_INVALID_CONTEXT -2147415760)
(defconstant $CSSMERR_CSP_INVALID_ALGORITHM -2147415759)
(defconstant $CSSMERR_CSP_INVALID_ATTR_KEY -2147415754)
(defconstant $CSSMERR_CSP_MISSING_ATTR_KEY -2147415753)
(defconstant $CSSMERR_CSP_INVALID_ATTR_INIT_VECTOR -2147415752)
(defconstant $CSSMERR_CSP_MISSING_ATTR_INIT_VECTOR -2147415751)
(defconstant $CSSMERR_CSP_INVALID_ATTR_SALT -2147415750)
(defconstant $CSSMERR_CSP_MISSING_ATTR_SALT -2147415749)
(defconstant $CSSMERR_CSP_INVALID_ATTR_PADDING -2147415748)
(defconstant $CSSMERR_CSP_MISSING_ATTR_PADDING -2147415747)
(defconstant $CSSMERR_CSP_INVALID_ATTR_RANDOM -2147415746)
(defconstant $CSSMERR_CSP_MISSING_ATTR_RANDOM -2147415745)
(defconstant $CSSMERR_CSP_INVALID_ATTR_SEED -2147415744)
(defconstant $CSSMERR_CSP_MISSING_ATTR_SEED -2147415743)
(defconstant $CSSMERR_CSP_INVALID_ATTR_PASSPHRASE -2147415742)
(defconstant $CSSMERR_CSP_MISSING_ATTR_PASSPHRASE -2147415741)
(defconstant $CSSMERR_CSP_INVALID_ATTR_KEY_LENGTH -2147415740)
(defconstant $CSSMERR_CSP_MISSING_ATTR_KEY_LENGTH -2147415739)
(defconstant $CSSMERR_CSP_INVALID_ATTR_BLOCK_SIZE -2147415738)
(defconstant $CSSMERR_CSP_MISSING_ATTR_BLOCK_SIZE -2147415737)
(defconstant $CSSMERR_CSP_INVALID_ATTR_OUTPUT_SIZE -2147415708)
(defconstant $CSSMERR_CSP_MISSING_ATTR_OUTPUT_SIZE -2147415707)
(defconstant $CSSMERR_CSP_INVALID_ATTR_ROUNDS -2147415706)
(defconstant $CSSMERR_CSP_MISSING_ATTR_ROUNDS -2147415705)
(defconstant $CSSMERR_CSP_INVALID_ATTR_ALG_PARAMS -2147415704)
(defconstant $CSSMERR_CSP_MISSING_ATTR_ALG_PARAMS -2147415703)
(defconstant $CSSMERR_CSP_INVALID_ATTR_LABEL -2147415702)
(defconstant $CSSMERR_CSP_MISSING_ATTR_LABEL -2147415701)
(defconstant $CSSMERR_CSP_INVALID_ATTR_KEY_TYPE -2147415700)
(defconstant $CSSMERR_CSP_MISSING_ATTR_KEY_TYPE -2147415699)
(defconstant $CSSMERR_CSP_INVALID_ATTR_MODE -2147415698)
(defconstant $CSSMERR_CSP_MISSING_ATTR_MODE -2147415697)
(defconstant $CSSMERR_CSP_INVALID_ATTR_EFFECTIVE_BITS -2147415696)
(defconstant $CSSMERR_CSP_MISSING_ATTR_EFFECTIVE_BITS -2147415695)
(defconstant $CSSMERR_CSP_INVALID_ATTR_START_DATE -2147415694)
(defconstant $CSSMERR_CSP_MISSING_ATTR_START_DATE -2147415693)
(defconstant $CSSMERR_CSP_INVALID_ATTR_END_DATE -2147415692)
(defconstant $CSSMERR_CSP_MISSING_ATTR_END_DATE -2147415691)
(defconstant $CSSMERR_CSP_INVALID_ATTR_VERSION -2147415690)
(defconstant $CSSMERR_CSP_MISSING_ATTR_VERSION -2147415689)
(defconstant $CSSMERR_CSP_INVALID_ATTR_PRIME -2147415688)
(defconstant $CSSMERR_CSP_MISSING_ATTR_PRIME -2147415687)
(defconstant $CSSMERR_CSP_INVALID_ATTR_BASE -2147415686)
(defconstant $CSSMERR_CSP_MISSING_ATTR_BASE -2147415685)
(defconstant $CSSMERR_CSP_INVALID_ATTR_SUBPRIME -2147415684)
(defconstant $CSSMERR_CSP_MISSING_ATTR_SUBPRIME -2147415683)
(defconstant $CSSMERR_CSP_INVALID_ATTR_ITERATION_COUNT -2147415682)
(defconstant $CSSMERR_CSP_MISSING_ATTR_ITERATION_COUNT -2147415681)
(defconstant $CSSMERR_CSP_INVALID_ATTR_DL_DB_HANDLE -2147415680)
(defconstant $CSSMERR_CSP_MISSING_ATTR_DL_DB_HANDLE -2147415679)
(defconstant $CSSMERR_CSP_INVALID_ATTR_ACCESS_CREDENTIALS -2147415678)
(defconstant $CSSMERR_CSP_MISSING_ATTR_ACCESS_CREDENTIALS -2147415677)
(defconstant $CSSMERR_CSP_INVALID_ATTR_PUBLIC_KEY_FORMAT -2147415676)
(defconstant $CSSMERR_CSP_MISSING_ATTR_PUBLIC_KEY_FORMAT -2147415675)
(defconstant $CSSMERR_CSP_INVALID_ATTR_PRIVATE_KEY_FORMAT -2147415674)
(defconstant $CSSMERR_CSP_MISSING_ATTR_PRIVATE_KEY_FORMAT -2147415673)
(defconstant $CSSMERR_CSP_INVALID_ATTR_SYMMETRIC_KEY_FORMAT -2147415672)
(defconstant $CSSMERR_CSP_MISSING_ATTR_SYMMETRIC_KEY_FORMAT -2147415671)
(defconstant $CSSMERR_CSP_INVALID_ATTR_WRAPPED_KEY_FORMAT -2147415670)
(defconstant $CSSMERR_CSP_MISSING_ATTR_WRAPPED_KEY_FORMAT -2147415669);  CSP Staged Cryptographic API Error Values. 

(defconstant $CSSMERR_CSP_STAGED_OPERATION_IN_PROGRESS -2147415736)
(defconstant $CSSMERR_CSP_STAGED_OPERATION_NOT_STARTED -2147415735)
(defconstant $CSSMERR_CSP_VERIFY_FAILED -2147415734)
(defconstant $CSSMERR_CSP_INVALID_SIGNATURE -2147415733)
(defconstant $CSSMERR_CSP_QUERY_SIZE_UNKNOWN -2147415732)
(defconstant $CSSMERR_CSP_BLOCK_SIZE_MISMATCH -2147415731)
(defconstant $CSSMERR_CSP_PRIVATE_KEY_NOT_FOUND -2147415730)
(defconstant $CSSMERR_CSP_PUBLIC_KEY_INCONSISTENT -2147415729)
(defconstant $CSSMERR_CSP_DEVICE_VERIFY_FAILED -2147415728)
(defconstant $CSSMERR_CSP_INVALID_LOGIN_NAME -2147415727)
(defconstant $CSSMERR_CSP_ALREADY_LOGGED_IN -2147415726)
(defconstant $CSSMERR_CSP_PRIVATE_KEY_ALREADY_EXISTS -2147415725)
(defconstant $CSSMERR_CSP_KEY_LABEL_ALREADY_EXISTS -2147415724)
(defconstant $CSSMERR_CSP_INVALID_DIGEST_ALGORITHM -2147415723)
(defconstant $CSSMERR_CSP_CRYPTO_DATA_CALLBACK_FAILED -2147415722)
;  TP Error Values Derived from Common Error Codes For All Module Types. 

(defconstant $CSSMERR_TP_INTERNAL_ERROR -2147409919)
(defconstant $CSSMERR_TP_MEMORY_ERROR -2147409918)
(defconstant $CSSMERR_TP_MDS_ERROR -2147409917)
(defconstant $CSSMERR_TP_INVALID_POINTER -2147409916)
(defconstant $CSSMERR_TP_INVALID_INPUT_POINTER -2147409915)
(defconstant $CSSMERR_TP_INVALID_OUTPUT_POINTER -2147409914)
(defconstant $CSSMERR_TP_FUNCTION_NOT_IMPLEMENTED -2147409913)
(defconstant $CSSMERR_TP_SELF_CHECK_FAILED -2147409912)
(defconstant $CSSMERR_TP_OS_ACCESS_DENIED -2147409911)
(defconstant $CSSMERR_TP_FUNCTION_FAILED -2147409910)
(defconstant $CSSMERR_TP_INVALID_CONTEXT_HANDLE -2147409856)
(defconstant $CSSMERR_TP_INVALID_DATA -2147409850)
(defconstant $CSSMERR_TP_INVALID_DB_LIST -2147409844)
(defconstant $CSSMERR_TP_INVALID_CERTGROUP_POINTER -2147409854)
(defconstant $CSSMERR_TP_INVALID_CERT_POINTER -2147409853)
(defconstant $CSSMERR_TP_INVALID_CRL_POINTER -2147409852)
(defconstant $CSSMERR_TP_INVALID_FIELD_POINTER -2147409851)
(defconstant $CSSMERR_TP_INVALID_NETWORK_ADDR -2147409833)
(defconstant $CSSMERR_TP_CRL_ALREADY_SIGNED -2147409849)
(defconstant $CSSMERR_TP_INVALID_NUMBER_OF_FIELDS -2147409848)
(defconstant $CSSMERR_TP_VERIFICATION_FAILURE -2147409847)
(defconstant $CSSMERR_TP_INVALID_DB_HANDLE -2147409846)
(defconstant $CSSMERR_TP_UNKNOWN_FORMAT -2147409842)
(defconstant $CSSMERR_TP_UNKNOWN_TAG -2147409841)
(defconstant $CSSMERR_TP_INVALID_PASSTHROUGH_ID -2147409834)
(defconstant $CSSMERR_TP_INVALID_CSP_HANDLE -2147409840)
(defconstant $CSSMERR_TP_INVALID_DL_HANDLE -2147409839)
(defconstant $CSSMERR_TP_INVALID_CL_HANDLE -2147409838)
(defconstant $CSSMERR_TP_INVALID_DB_LIST_POINTER -2147409843)
;  TP Module-Specific Error Values 

(defconstant $CSSM_TP_BASE_TP_ERROR -2147409664)
(defconstant $CSSMERR_TP_INVALID_CALLERAUTH_CONTEXT_POINTER -2147409663)
(defconstant $CSSMERR_TP_INVALID_IDENTIFIER_POINTER -2147409662)
(defconstant $CSSMERR_TP_INVALID_KEYCACHE_HANDLE -2147409661)
(defconstant $CSSMERR_TP_INVALID_CERTGROUP -2147409660)
(defconstant $CSSMERR_TP_INVALID_CRLGROUP -2147409659)
(defconstant $CSSMERR_TP_INVALID_CRLGROUP_POINTER -2147409658)
(defconstant $CSSMERR_TP_AUTHENTICATION_FAILED -2147409657)
(defconstant $CSSMERR_TP_CERTGROUP_INCOMPLETE -2147409656)
(defconstant $CSSMERR_TP_CERTIFICATE_CANT_OPERATE -2147409655)
(defconstant $CSSMERR_TP_CERT_EXPIRED -2147409654)
(defconstant $CSSMERR_TP_CERT_NOT_VALID_YET -2147409653)
(defconstant $CSSMERR_TP_CERT_REVOKED -2147409652)
(defconstant $CSSMERR_TP_CERT_SUSPENDED -2147409651)
(defconstant $CSSMERR_TP_INSUFFICIENT_CREDENTIALS -2147409650)
(defconstant $CSSMERR_TP_INVALID_ACTION -2147409649)
(defconstant $CSSMERR_TP_INVALID_ACTION_DATA -2147409648); 	CSSMERR_TP_INVALID_NETWORK_ADDR =				CSSM_TP_BASE_TP_ERROR + 17, 

(defconstant $CSSMERR_TP_INVALID_ANCHOR_CERT -2147409646)
(defconstant $CSSMERR_TP_INVALID_AUTHORITY -2147409645)
(defconstant $CSSMERR_TP_VERIFY_ACTION_FAILED -2147409644)
(defconstant $CSSMERR_TP_INVALID_CERTIFICATE -2147409643)
(defconstant $CSSMERR_TP_INVALID_CERT_AUTHORITY -2147409642)
(defconstant $CSSMERR_TP_INVALID_CRL_AUTHORITY -2147409641)
(defconstant $CSSMERR_TP_INVALID_CRL_ENCODING -2147409640)
(defconstant $CSSMERR_TP_INVALID_CRL_TYPE -2147409639)
(defconstant $CSSMERR_TP_INVALID_CRL -2147409638)
(defconstant $CSSMERR_TP_INVALID_FORM_TYPE -2147409637)
(defconstant $CSSMERR_TP_INVALID_ID -2147409636)
(defconstant $CSSMERR_TP_INVALID_IDENTIFIER -2147409635)
(defconstant $CSSMERR_TP_INVALID_INDEX -2147409634)
(defconstant $CSSMERR_TP_INVALID_NAME -2147409633)
(defconstant $CSSMERR_TP_INVALID_POLICY_IDENTIFIERS -2147409632)
(defconstant $CSSMERR_TP_INVALID_TIMESTRING -2147409631)
(defconstant $CSSMERR_TP_INVALID_REASON -2147409630)
(defconstant $CSSMERR_TP_INVALID_REQUEST_INPUTS -2147409629)
(defconstant $CSSMERR_TP_INVALID_RESPONSE_VECTOR -2147409628)
(defconstant $CSSMERR_TP_INVALID_SIGNATURE -2147409627)
(defconstant $CSSMERR_TP_INVALID_STOP_ON_POLICY -2147409626)
(defconstant $CSSMERR_TP_INVALID_CALLBACK -2147409625)
(defconstant $CSSMERR_TP_INVALID_TUPLE -2147409624)
(defconstant $CSSMERR_TP_NOT_SIGNER -2147409623)
(defconstant $CSSMERR_TP_NOT_TRUSTED -2147409622)
(defconstant $CSSMERR_TP_NO_DEFAULT_AUTHORITY -2147409621)
(defconstant $CSSMERR_TP_REJECTED_FORM -2147409620)
(defconstant $CSSMERR_TP_REQUEST_LOST -2147409619)
(defconstant $CSSMERR_TP_REQUEST_REJECTED -2147409618)
(defconstant $CSSMERR_TP_UNSUPPORTED_ADDR_TYPE -2147409617)
(defconstant $CSSMERR_TP_UNSUPPORTED_SERVICE -2147409616)
(defconstant $CSSMERR_TP_INVALID_TUPLEGROUP_POINTER -2147409615)
(defconstant $CSSMERR_TP_INVALID_TUPLEGROUP -2147409614)
;  AC Error Values Derived from Common Error Codes For All Module Types. 

(defconstant $CSSMERR_AC_INTERNAL_ERROR -2147405823)
(defconstant $CSSMERR_AC_MEMORY_ERROR -2147405822)
(defconstant $CSSMERR_AC_MDS_ERROR -2147405821)
(defconstant $CSSMERR_AC_INVALID_POINTER -2147405820)
(defconstant $CSSMERR_AC_INVALID_INPUT_POINTER -2147405819)
(defconstant $CSSMERR_AC_INVALID_OUTPUT_POINTER -2147405818)
(defconstant $CSSMERR_AC_FUNCTION_NOT_IMPLEMENTED -2147405817)
(defconstant $CSSMERR_AC_SELF_CHECK_FAILED -2147405816)
(defconstant $CSSMERR_AC_OS_ACCESS_DENIED -2147405815)
(defconstant $CSSMERR_AC_FUNCTION_FAILED -2147405814)
(defconstant $CSSMERR_AC_INVALID_CONTEXT_HANDLE -2147405760)
(defconstant $CSSMERR_AC_INVALID_DATA -2147405754)
(defconstant $CSSMERR_AC_INVALID_DB_LIST -2147405748)
(defconstant $CSSMERR_AC_INVALID_PASSTHROUGH_ID -2147405738)
(defconstant $CSSMERR_AC_INVALID_DL_HANDLE -2147405743)
(defconstant $CSSMERR_AC_INVALID_CL_HANDLE -2147405742)
(defconstant $CSSMERR_AC_INVALID_TP_HANDLE -2147405741)
(defconstant $CSSMERR_AC_INVALID_DB_HANDLE -2147405750)
(defconstant $CSSMERR_AC_INVALID_DB_LIST_POINTER -2147405747)
;  AC Module-Specific Error Values 

(defconstant $CSSM_AC_BASE_AC_ERROR -2147405568)
(defconstant $CSSMERR_AC_INVALID_BASE_ACLS -2147405567)
(defconstant $CSSMERR_AC_INVALID_TUPLE_CREDENTIALS -2147405566)
(defconstant $CSSMERR_AC_INVALID_ENCODING -2147405565)
(defconstant $CSSMERR_AC_INVALID_VALIDITY_PERIOD -2147405564)
(defconstant $CSSMERR_AC_INVALID_REQUESTOR -2147405563)
(defconstant $CSSMERR_AC_INVALID_REQUEST_DESCRIPTOR -2147405562)
;  CL Error Values Derived from Common Error Codes For All Module Types. 

(defconstant $CSSMERR_CL_INTERNAL_ERROR -2147411967)
(defconstant $CSSMERR_CL_MEMORY_ERROR -2147411966)
(defconstant $CSSMERR_CL_MDS_ERROR -2147411965)
(defconstant $CSSMERR_CL_INVALID_POINTER -2147411964)
(defconstant $CSSMERR_CL_INVALID_INPUT_POINTER -2147411963)
(defconstant $CSSMERR_CL_INVALID_OUTPUT_POINTER -2147411962)
(defconstant $CSSMERR_CL_FUNCTION_NOT_IMPLEMENTED -2147411961)
(defconstant $CSSMERR_CL_SELF_CHECK_FAILED -2147411960)
(defconstant $CSSMERR_CL_OS_ACCESS_DENIED -2147411959)
(defconstant $CSSMERR_CL_FUNCTION_FAILED -2147411958)
(defconstant $CSSMERR_CL_INVALID_CONTEXT_HANDLE -2147411904)
(defconstant $CSSMERR_CL_INVALID_CERTGROUP_POINTER -2147411902)
(defconstant $CSSMERR_CL_INVALID_CERT_POINTER -2147411901)
(defconstant $CSSMERR_CL_INVALID_CRL_POINTER -2147411900)
(defconstant $CSSMERR_CL_INVALID_FIELD_POINTER -2147411899)
(defconstant $CSSMERR_CL_INVALID_DATA -2147411898)
(defconstant $CSSMERR_CL_CRL_ALREADY_SIGNED -2147411897)
(defconstant $CSSMERR_CL_INVALID_NUMBER_OF_FIELDS -2147411896)
(defconstant $CSSMERR_CL_VERIFICATION_FAILURE -2147411895)
(defconstant $CSSMERR_CL_UNKNOWN_FORMAT -2147411890)
(defconstant $CSSMERR_CL_UNKNOWN_TAG -2147411889)
(defconstant $CSSMERR_CL_INVALID_PASSTHROUGH_ID -2147411882)
;  CL Module-Specific Error Values 

(defconstant $CSSM_CL_BASE_CL_ERROR -2147411712)
(defconstant $CSSMERR_CL_INVALID_BUNDLE_POINTER -2147411711)
(defconstant $CSSMERR_CL_INVALID_CACHE_HANDLE -2147411710)
(defconstant $CSSMERR_CL_INVALID_RESULTS_HANDLE -2147411709)
(defconstant $CSSMERR_CL_INVALID_BUNDLE_INFO -2147411708)
(defconstant $CSSMERR_CL_INVALID_CRL_INDEX -2147411707)
(defconstant $CSSMERR_CL_INVALID_SCOPE -2147411706)
(defconstant $CSSMERR_CL_NO_FIELD_VALUES -2147411705)
(defconstant $CSSMERR_CL_SCOPE_NOT_SUPPORTED -2147411704)
;  DL Error Values Derived from Common Error Codes For All Module Types. 

(defconstant $CSSMERR_DL_INTERNAL_ERROR -2147414015)
(defconstant $CSSMERR_DL_MEMORY_ERROR -2147414014)
(defconstant $CSSMERR_DL_MDS_ERROR -2147414013)
(defconstant $CSSMERR_DL_INVALID_POINTER -2147414012)
(defconstant $CSSMERR_DL_INVALID_INPUT_POINTER -2147414011)
(defconstant $CSSMERR_DL_INVALID_OUTPUT_POINTER -2147414010)
(defconstant $CSSMERR_DL_FUNCTION_NOT_IMPLEMENTED -2147414009)
(defconstant $CSSMERR_DL_SELF_CHECK_FAILED -2147414008)
(defconstant $CSSMERR_DL_OS_ACCESS_DENIED -2147414007)
(defconstant $CSSMERR_DL_FUNCTION_FAILED -2147414006)
(defconstant $CSSMERR_DL_INVALID_CSP_HANDLE -2147413936)
(defconstant $CSSMERR_DL_INVALID_DL_HANDLE -2147413935)
(defconstant $CSSMERR_DL_INVALID_CL_HANDLE -2147409838)
(defconstant $CSSMERR_DL_INVALID_DB_LIST_POINTER -2147413939)
;  DL Error Values Derived from ACL-based Error Codes. 

(defconstant $CSSMERR_DL_OPERATION_AUTH_DENIED -2147413984)
(defconstant $CSSMERR_DL_OBJECT_USE_AUTH_DENIED -2147413983)
(defconstant $CSSMERR_DL_OBJECT_MANIP_AUTH_DENIED -2147413982)
(defconstant $CSSMERR_DL_OBJECT_ACL_NOT_SUPPORTED -2147413981)
(defconstant $CSSMERR_DL_OBJECT_ACL_REQUIRED -2147413980)
(defconstant $CSSMERR_DL_INVALID_ACCESS_CREDENTIALS -2147413979)
(defconstant $CSSMERR_DL_INVALID_ACL_BASE_CERTS -2147413978)
(defconstant $CSSMERR_DL_ACL_BASE_CERTS_NOT_SUPPORTED -2147413977)
(defconstant $CSSMERR_DL_INVALID_SAMPLE_VALUE -2147413976)
(defconstant $CSSMERR_DL_SAMPLE_VALUE_NOT_SUPPORTED -2147413975)
(defconstant $CSSMERR_DL_INVALID_ACL_SUBJECT_VALUE -2147413974)
(defconstant $CSSMERR_DL_ACL_SUBJECT_TYPE_NOT_SUPPORTED -2147413973)
(defconstant $CSSMERR_DL_INVALID_ACL_CHALLENGE_CALLBACK -2147413972)
(defconstant $CSSMERR_DL_ACL_CHALLENGE_CALLBACK_FAILED -2147413971)
(defconstant $CSSMERR_DL_INVALID_ACL_ENTRY_TAG -2147413970)
(defconstant $CSSMERR_DL_ACL_ENTRY_TAG_NOT_FOUND -2147413969)
(defconstant $CSSMERR_DL_INVALID_ACL_EDIT_MODE -2147413968)
(defconstant $CSSMERR_DL_ACL_CHANGE_FAILED -2147413967)
(defconstant $CSSMERR_DL_INVALID_NEW_ACL_ENTRY -2147413966)
(defconstant $CSSMERR_DL_INVALID_NEW_ACL_OWNER -2147413965)
(defconstant $CSSMERR_DL_ACL_DELETE_FAILED -2147413964)
(defconstant $CSSMERR_DL_ACL_REPLACE_FAILED -2147413963)
(defconstant $CSSMERR_DL_ACL_ADD_FAILED -2147413962)
;  DL Error Values for Specific Data Types. 

(defconstant $CSSMERR_DL_INVALID_DB_HANDLE -2147413942)
(defconstant $CSSMERR_DL_INVALID_PASSTHROUGH_ID -2147413930)
(defconstant $CSSMERR_DL_INVALID_NETWORK_ADDR -2147413929)
;  DL Module-Specific Error Values 

(defconstant $CSSM_DL_BASE_DL_ERROR -2147413760)
(defconstant $CSSMERR_DL_DATABASE_CORRUPT -2147413759)
(defconstant $CSSMERR_DL_INVALID_RECORD_INDEX -2147413752)
(defconstant $CSSMERR_DL_INVALID_RECORDTYPE -2147413751)
(defconstant $CSSMERR_DL_INVALID_FIELD_NAME -2147413750)
(defconstant $CSSMERR_DL_UNSUPPORTED_FIELD_FORMAT -2147413749)
(defconstant $CSSMERR_DL_UNSUPPORTED_INDEX_INFO -2147413748)
(defconstant $CSSMERR_DL_UNSUPPORTED_LOCALITY -2147413747)
(defconstant $CSSMERR_DL_UNSUPPORTED_NUM_ATTRIBUTES -2147413746)
(defconstant $CSSMERR_DL_UNSUPPORTED_NUM_INDEXES -2147413745)
(defconstant $CSSMERR_DL_UNSUPPORTED_NUM_RECORDTYPES -2147413744)
(defconstant $CSSMERR_DL_UNSUPPORTED_RECORDTYPE -2147413743)
(defconstant $CSSMERR_DL_FIELD_SPECIFIED_MULTIPLE -2147413742)
(defconstant $CSSMERR_DL_INCOMPATIBLE_FIELD_FORMAT -2147413741)
(defconstant $CSSMERR_DL_INVALID_PARSING_MODULE -2147413740)
(defconstant $CSSMERR_DL_INVALID_DB_NAME -2147413738)
(defconstant $CSSMERR_DL_DATASTORE_DOESNOT_EXIST -2147413737)
(defconstant $CSSMERR_DL_DATASTORE_ALREADY_EXISTS -2147413736)
(defconstant $CSSMERR_DL_DB_LOCKED -2147413735)
(defconstant $CSSMERR_DL_DATASTORE_IS_OPEN -2147413734)
(defconstant $CSSMERR_DL_RECORD_NOT_FOUND -2147413733)
(defconstant $CSSMERR_DL_MISSING_VALUE -2147413732)
(defconstant $CSSMERR_DL_UNSUPPORTED_QUERY -2147413731)
(defconstant $CSSMERR_DL_UNSUPPORTED_QUERY_LIMITS -2147413730)
(defconstant $CSSMERR_DL_UNSUPPORTED_NUM_SELECTION_PREDS -2147413729)
(defconstant $CSSMERR_DL_UNSUPPORTED_OPERATOR -2147413727)
(defconstant $CSSMERR_DL_INVALID_RESULTS_HANDLE -2147413726)
(defconstant $CSSMERR_DL_INVALID_DB_LOCATION -2147413725)
(defconstant $CSSMERR_DL_INVALID_ACCESS_REQUEST -2147413724)
(defconstant $CSSMERR_DL_INVALID_INDEX_INFO -2147413723)
(defconstant $CSSMERR_DL_INVALID_SELECTION_TAG -2147413722)
(defconstant $CSSMERR_DL_INVALID_NEW_OWNER -2147413721)
(defconstant $CSSMERR_DL_INVALID_RECORD_UID -2147413720)
(defconstant $CSSMERR_DL_INVALID_UNIQUE_INDEX_DATA -2147413719)
(defconstant $CSSMERR_DL_INVALID_MODIFY_MODE -2147413718)
(defconstant $CSSMERR_DL_INVALID_OPEN_PARAMETERS -2147413717)
(defconstant $CSSMERR_DL_RECORD_MODIFIED -2147413716)
(defconstant $CSSMERR_DL_ENDOFDATA -2147413715)
(defconstant $CSSMERR_DL_INVALID_QUERY -2147413714)
(defconstant $CSSMERR_DL_INVALID_VALUE -2147413713)
(defconstant $CSSMERR_DL_MULTIPLE_VALUES_UNSUPPORTED -2147413712)
(defconstant $CSSMERR_DL_STALE_UNIQUE_RECORD -2147413711)
; #ifdef __cplusplus
#| #|
}
#endif
|#
 |#

; #endif /* _CSSMERR_H_ */


(provide-interface "cssmerr")