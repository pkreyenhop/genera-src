;;; -*- Base: 10; Mode: LISP; Syntax: Common-lisp; Lowercase: T -*-
;;;
;;; Douglas Fields
;;; https://symbolics.lisp.engineer/

; Patches to XLIB to make it work on a Modern X Server (e.g., Xquartz 2.7.10_beta2).
; After loading these patches, you should probably save your world and restart for
; ease of use.

; On MacIvory III Genera 8.3 I can get this error when using the :xquartz-87-tenkeyless
; keyboard mapping when I do "Start X Screen":
;
; Error: VALUE-ERROR in current request  Code 118.0 [SetModifierMapping] Value 10485766.
;
; XLIB::X-ERROR
;    Arg 0 (CONDITION): XLIB:VALUE-ERROR
;    Rest Arg: (:DISPLAUY #<XLIB:DISPLAY #:0 (The X.Org Foundation R11803000)> :ERROR-KEY XLIB:VALUE-ERROR ...)
;
; One fix was suggested here: http://www.loomcom.com/genera/genera-install.html .
; More detailed analysis is here: http://tech-sketch.jp/2014/12/linux-lispmachine.html .
; This seems to work.

(defun xlib:set-modifier-mapping (display &rest args) (values))

; I haven't seen any more problems, yet, but this page
;   http://tech-sketch.jp/2015/02/linux_lispmachine_2.html
; suggests that there is another problem with xlib:close-display.
; It causes a crash when saving the world from X-Windows.
; If I see this problem, I will try this.

;;; (defun xlib:close-display (display &key abort))

: Of course, the proper fix to these problems is to look into the
; underlying source code and fix it to work with a modern X server.
; For example, the original set-modifier-mapping is at clx>doc.lisp
; and seems to be a very simple function. close-display is even
; simpler.
