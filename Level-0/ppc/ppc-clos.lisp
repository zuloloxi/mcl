;;; -*- Mode: Lisp; Package: CCL -*-

;;	Change History (most recent first):
;;  4 11/9/95  akh  %allocate-instance and standard-instance-p are in 1l-clos
;;  (do not edit before this line!!)

;;;
;;; level-0;ppc;ppc-clos.lisp

;; 11/13/95 gb  new-type-class & make-class-ctype went as well.  This is an
;;              obsolete file.  (Maybe should do a reasonable
;;              STANDARD-INSTANCE-P here or elsewhere.)
#| MISSING:
(defun class-of (thing)
(defun %%class-of (&lap thing)
|#

;(in-package "CCL")

;;; It's easier to keep this is LAP; we want to play around with its
;;; constants.

;;; This just maps a SLOT-ID to a SLOT-DEFINITION or NIL.
;;; The map is a vector of (UNSIGNED-BYTE 8); this should
;;; be used when there are less than 255 slots in the class.
(defppclapfunction %small-map-slot-id-lookup ((slot-id arg_z))
  (lwz temp1 'map nfn)
  (svref arg_x slot-id.index slot-id)
  (getvheader imm0 temp1)
  (header-length imm3 imm0)
  (lwz temp0 'table nfn)
  (cmplw arg_x imm3)
  (srwi imm0 arg_x 2)
  (la imm0 ppc::misc-data-offset imm0)
  (li imm1 ppc::misc-data-offset)
  (bge @have-scaled-table-index)
  (lbzx imm1 temp1 imm0)
  (slwi imm1 imm1 2)
  (la imm1 ppc::misc-data-offset imm1)
  @have-scaled-table-index
  (lwzx arg_z temp0 imm1)
  (blr))

;;; The same idea, only the map is a vector of (UNSIGNED-BYTE 32).
(defppclapfunction %large-map-slot-id-lookup ((slot-id arg_z))
  (lwz temp1 'map nfn)
  (svref arg_x slot-id.index slot-id)
  (getvheader imm0 temp1)
  (header-length imm3 imm0)
  (lwz temp0 'table nfn)
  (cmplw arg_x imm3)
  (la imm0 ppc::misc-data-offset arg_x)
  (li imm1 ppc::misc-data-offset)
  (bge @have-scaled-table-index)
  (lwzx imm1 temp1 imm0)
  (la imm1 ppc::misc-data-offset imm1)
  @have-scaled-table-index
  (lwzx arg_z temp0 imm1)
  (blr))

(defppclapfunction %small-slot-id-value ((instance arg_y) (slot-id arg_z))
  (lwz temp1 'map nfn)
  (svref arg_x slot-id.index slot-id)
  (getvheader imm0 temp1)
  (lwz temp0 'table nfn)
  (header-length imm3 imm0)
  (cmplw arg_x imm3)
  (srwi imm0 arg_x 2)
  (la imm0 ppc::misc-data-offset imm0)
  (bge @missing)
  (lbzx imm1 temp1 imm0)
  (cmpwi imm1 0)
  (slwi imm1 imm1 2)
  (la imm1 ppc::misc-data-offset imm1)
  (beq @missing)
  @have-scaled-table-index
  (lwzx arg_z temp0 imm1)
  (lwz arg_x 'class nfn)
  (lwz nfn '%maybe-std-slot-value nfn)
  (lwz temp0 ppc::misc-data-offset nfn)
  (set-nargs 3)
  (la loc-pc ppc::misc-data-offset temp0)
  (mtctr loc-pc)
  (bctr)
  @missing                              ; (%slot-id-ref-missing instance id)
  (lwz nfn '%slot-id-ref-missing nfn)
  (set-nargs 2)
  (lwz temp0 ppc::misc-data-offset nfn)
  (la loc-pc ppc::misc-data-offset temp0)
  (mtctr loc-pc)
  (bctr))

(defppclapfunction %large-slot-id-value ((instance arg_y) (slot-id arg_z))
  (lwz temp1 'map nfn)
  (svref arg_x slot-id.index slot-id)
  (getvheader imm0 temp1)
  (lwz temp0 'table nfn)
  (header-length imm3 imm0)
  (cmplw arg_x imm3)
  (la imm0 ppc::misc-data-offset arg_x)
  (bge @missing)
  (lwzx imm1 temp1 imm0)
  (cmpwi imm1 0)
  (la imm1 ppc::misc-data-offset imm1)
  (beq @missing)
  @have-scaled-table-index
  (lwz arg_x 'class nfn)
  (lwz nfn '%maybe-std-slot-value-using-class nfn)
  (lwzx arg_z temp0 imm1)
  (lwz temp0 ppc::misc-data-offset nfn)
  (la loc-pc ppc::misc-data-offset temp0)
  (set-nargs 3)
  (mtctr loc-pc)
  (bctr)
  @missing                              ; (%slot-id-ref-missing instance id)
  (lwz nfn '%slot-id-ref-missing nfn)
  (set-nargs 2)
  (lwz temp0 ppc::misc-data-offset nfn)
  (la loc-pc ppc::misc-data-offset temp0)
  (mtctr loc-pc)
  (bctr))
  
(defppclapfunction %small-set-slot-id-value ((instance arg_x)
                                             (slot-id arg_y)
                                             (new-value arg_z))
  (lwz temp1 'map nfn)
  (svref imm3 slot-id.index slot-id)
  (getvheader imm0 temp1)
  (lwz temp0 'table nfn)
  (header-length imm4 imm0)
  (cmplw imm3 imm4)
  (srwi imm0 imm3 2)
  (la imm0 ppc::misc-data-offset imm0)
  (bge @missing)
  (lbzx imm1 temp1 imm0)
  (cmpwi imm1 0)
  (slwi imm1 imm1 2)
  (la imm1 ppc::misc-data-offset imm1)
  (beq @missing)
  @have-scaled-table-index
  (lwz temp1 'class nfn)
  (lwzx arg_y temp0 imm1)
  (lwz nfn '%maybe-std-setf-slot-value-using-class nfn)
  (set-nargs 4)
  (lwz temp0 ppc::misc-data-offset nfn)
  (la loc-pc ppc::misc-data-offset temp0)
  (vpush temp1)
  (mtctr loc-pc)
  (bctr)
  @missing                              ; (%slot-id-set-missing instance id new-value)
  (lwz nfn '%slot-id-set-missing nfn)
  (set-nargs 3)
  (lwz temp0 ppc::misc-data-offset nfn)
  (la loc-pc ppc::misc-data-offset temp0)
  (mtctr loc-pc)
  (bctr))

(defppclapfunction %large-set-slot-id-value ((instance arg_x)
                                             (slot-id arg_y)
                                             (new-value arg_z))
  (lwz temp1 'map nfn)
  (svref imm3 slot-id.index slot-id)
  (getvheader imm0 temp1)
  (lwz temp0 'table nfn)
  (header-length imm4 imm0)
  (cmplw imm3 imm4)
  (la imm0 ppc::misc-data-offset imm3)
  (bge @missing)
  (lwzx imm1 temp1 imm0)
  (cmpwi imm1 0)
  (la imm1 ppc::misc-data-offset imm1)
  (beq @missing)
  @have-scaled-table-index
  (lwz temp1 'class nfn)
  (lwzx arg_y temp0 imm1)
  (lwz nfn '%maybe-std-setf-slot-value-using-class nfn)
  (set-nargs 4)
  (lwz temp0 ppc::misc-data-offset nfn)
  (la loc-pc ppc::misc-data-offset temp0)
  (vpush temp1)
  (mtctr loc-pc)
  (bctr)
  @missing                              ; (%slot-id-set-missing instance id new-value)
  (lwz nfn '%slot-id-set-missing nfn)
  (set-nargs 3)
  (lwz temp0 ppc::misc-data-offset nfn)
  (la loc-pc ppc::misc-data-offset temp0)
  (mtctr loc-pc)
  (bctr))