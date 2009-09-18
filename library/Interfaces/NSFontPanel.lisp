(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:NSFontPanel.h"
; at Sunday July 2,2006 7:30:48 pm.
; 
; 	NSFontPanel.h
; 	Application Kit
; 	Copyright (c) 1994-2003, Apple Computer, Inc.
; 	All rights reserved.
; 

; #import <AppKit/NSPanel.h>

; #if MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_3
#| @INTERFACE 
NSObject (NSFontPanelValidationAdditions)
- (unsigned int) validModesForFontPanel: (NSFontPanel *) fontPanel;
|#

; #endif

#| @INTERFACE 
NSFontPanel : NSPanel {
    
    NSFontManager	*_manager;

    id			_familyList;
    id                  _faceList; 
    id                  _sizeList; 
    id                  _mainCollectionList;
    id			_sizeField;
    id                  _sizeSlider;
    id                  _sizeSliderBox;
    id			_preview;
    id			_previewCaption;
    id                  _mainSplitView;
    id			_mmCollectionList;	
    id			_mmFamilyList;
    id                  _mmFaceList;
    id                  _mmSizeList;
    id			_extrasPopup; 	
    id			_searchField;	
    id			_fixedListButton;
    id		        _sliderButton; 
    id		        _accessoryView; 
    struct __fpFlags {
        unsigned int        multipleFont:1;
        unsigned int        dirty:1;
        unsigned int        amPreviewing:1;
        unsigned int        alwaysPreview:1;
        unsigned int        dontPreview:1;
	unsigned int	    setFontChange:1;
	unsigned int	    setFontAttributeChange:1;
	unsigned int	    sizeValueCacheIsValid:1;
	unsigned int	    sizeFieldIsRelative:1;
	unsigned int	    inittedCollPane:1;
	unsigned int	    inittedFavePane:1;
	unsigned int	    didInitialPaneSetup:1;
	unsigned int	    _inNewCol:1;
	unsigned int	    _delRespFamily:1;
	unsigned int	    _delRespFace:1;
	unsigned int	    _delRespSize:1;
	unsigned int	    _delRespColl:1;
	unsigned int	    _collectionDisabled; 	unsigned int	    _sizeDisabled; 	unsigned int	    _faceDisabled; 	unsigned int	    _lastFaceSelection; 
        unsigned int        RESERVED2:12;
    } _fpFlags;
    float		_cachedSizeValue;
    id			_separator; 
    id 			_splitVue;
    id			_regularModeBox; 
    id			_miniModeBox; 
    id			_modeBoxSuperview; 
    id			_collectionLabel; 
    id			_sizeLabel; 
    id			_faceLabel; 
    id			_familyLabel; 
    id			_sizeStyleButton; 
    id			_newSizeField; 
    id			_editSizeList; 
    id			_editSizeListBox; 
    id			_editSizeSliderBox; 
    id			_editSizeSliderMaxField; 
    id			_editSizeSliderMinField; 
    id			_sizeEditWindow; 
    id			_defaultCollection; 
    id 			_defaultCollectionRep, _currentCollectionRep;
    id			_availableSizes; 
    id 			_collections;      int 		_lastPane;
    NSFontDescriptor 	*_prevSelectedFontDescriptor;
    id 			_searchTimer;
    id			_unused0; 
    void 		*_carbonNotification; 
    id _collectionRenameButton;
    id _reserved3[2];

    id _addCollectionButton;
    id _removeCollectionButton;
    id _previewBox;
    int _genCount;
    id _collectionsPboard;

    float _fontPanelPreviewHeight; 
    id _typographyPanel;
    id _actionButton;
    id _fontEffectsBox;
    int _seqNumber;
    int _sizeStyle;
    id _targetObject;
    id _unused13;
    id _unused14;
    id _unused15;
    id _unused16;
    int _unused17; 
    id _unsed18; 
    id _unused19; 
    id _unused20; 
    id _unused21;

    id _unused22; 
    id _unused23;
    id _unused24;
    id _unused25;
    id _unused26;

    id _unused27; 
    id _unused28;
    id _unused29; 
    id _unused30; 

    id _unused31; 

    id _unused32;
    id _unused33;
    id _unused34;
    id _unused35;
    id _unused36;
    id _unused37;
    id _unused38;
    id _unused39;
    id _unused40;
    id _unused41;
    id _unused42;
    id _unused43;
    id _Reserved32[16];     id _unused44;
    id _unused45; 
    id _unused46;
    id _unused47;
}

+ (NSFontPanel *)sharedFontPanel;
+ (BOOL)sharedFontPanelExists;

- (NSView *)accessoryView;
- (void)setAccessoryView:(NSView *)aView;
- (void)setPanelFont:(NSFont *)fontObj isMultiple:(BOOL)flag;
- (NSFont *)panelConvertFont:(NSFont *)fontObj;
- (BOOL)worksWhenModal;
- (BOOL)isEnabled;
- (void)setEnabled:(BOOL)flag;


- (void) reloadDefaultFontFamilies;

|#
;  Tags of views in the FontPanel
;     THESE ARE ALL OBSOLETE and should not be used.
; 

(defconstant $NSFPPreviewButton #x83)
(defconstant $NSFPRevertButton #x82)
(defconstant $NSFPSetButton #x84)
(defconstant $NSFPPreviewField #x80)
(defconstant $NSFPSizeField #x81)
(defconstant $NSFPSizeTitle #x85)
(defconstant $NSFPCurrentField #x86)

; #if MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_3

(defconstant $NSFontPanelFaceModeMask 1)
(defconstant $NSFontPanelSizeModeMask 2)
(defconstant $NSFontPanelCollectionModeMask 4)
(defconstant $NSFontPanelStandardModesMask #xFFFF)
(defconstant $NSFontPanelAllModesMask #xFFFFFFFF)

; #endif


(provide-interface "NSFontPanel")