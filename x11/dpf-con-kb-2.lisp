;;; -*- Mode: LISP; Syntax: Common-lisp; Package: SYSTEM-APPLICATIONS; Base: 10; Lowercase: T -*-

;;; Douglas Fields
;;; https://symbolics.lisp.engineer/

;;; 87-key Tenkeyless keyboard under Xquartz

(defparameter
  *default-xquartz-87-tenkeyless-keyboard-mapping-table*
  ; FIXME: Below is a copy of the SGI table
  (sys:make-keyboard-table
    '(nil nil nil nil nil nil nil nil :left-control :caps-lock :right-shift :left-shift
      (#\Escape #\Escape #\ #\) (#\1 #\!) #\Tab (#\q #\Q #\) (#\a #\A nil #\) (#\s #\S)
      nil (#\2 #\@) (#\3 #\#) (#\w #\W #\) (#\e #\E #\ #\) (#\d #\D nil #\�) (#\f #\F)
      (#\z #\Z) (#\x #\X) (#\4 #\$) (#\5 #\%) (#\r #\R #\) (#\t #\T #\) (#\g #\G #\ #\�)
      (#\h #\H #\) (#\c #\C) (#\v #\V) (#\6 #\^) (#\7 #\&) (#\y #\Y #\) (#\u #\U #\)
      (#\j #\J #\) (#\k #\K #\) (#\b #\B nil #\) (#\n #\N) (#\8 #\* nil #\) (#\9 #\()
      (#\i #\I #\) (#\o #\O #\) (#\l #\L #\ #\�) (#\; #\: nil #\�) (#\m #\M) (#\, #\< #\)
      (#\0 #\)) (#\- #\_ #\) (#\p #\P #\ #\) (#\[ #\{) (#\' #\" #\ ) #\Return (#\. #\> #\)
      (#\/ #\? #\�) (#\= #\+ #\ #\�) (#\` #\~ #\) (#\] #\}) (#\\ #\|) #\End nil nil
      #\Back-Space #\Rubout #\Keyboard:Left #\Keyboard:Down #\Scroll #\Rubout #\Keyboard:Home
      #\Keyboard:Up :right-symbol #\Keyboard:Right nil nil #\Keyboard:Left #\Keyboard:Down
      #\Keyboard:Back-Scroll #\Keyboard:Copy nil nil nil #\Keyboard:Right #\Keyboard:Up nil
      #\Space nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
      nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
      nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil :left-meta
      :right-meta :right-control (#\Select #\Square #\Select #\Square)
      (#\Network #\Circle #\Network #\Circle) (#\Function #\Triangle #\Function #\Triangle)
      (#\Suspend (:mode-lock :locking t) #\Suspend (:mode-lock :locking t)) #\Resume #\Abort
      :left-super :left-hyper (#\Scroll #\Page #\Scroll #\Page)
      (#\Clear-Input #\Refresh #\Clear-Input #\Refresh) (#\Complete #\End #\Complete #\End)
      (#\Help #\Help #\Symbol-Help #\Symbol-Help)
      (#\Refresh #\Refresh #\Keyboard:Print #\Keyboard:Print)
      ((:scroll-lock :locking t) (:scroll-lock :locking t) (:scroll-lock :locking t)
       (:scroll-lock :locking t))
      #\Suspend nil #\Keyboard:Home #\Keyboard:Back-Scroll #\End #\Scroll
      ((:num-lock :locking t) (:num-lock :locking t) (:num-lock :locking t)
       (:num-lock :locking t))
      #\Keyboard:Paste #\Keyboard:Cut nil nil nil nil nil nil nil nil nil nil nil nil nil nil
      nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
      nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
      nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
      nil nil)))


(sys:define-keyboard-layout :xquartz-87-tenkeyless
  (:pretty-name "Xquartz 87-key Tenkeyless")
  (:default-mapping-table *default-xquartz-87-tenkeyless-keyboard-mapping-table*)
  (:numeric-id #x000500DF)

  (:row :left 0 :top 0
        :keys ((:legend "Esc" :code 61 :keysym (#xff #x1b))))
  (:row :left 2 :top 0
        :keys ((:legend "F1" :code 130 :keysym (#xff #xbe))
               (:legend "F2" :code 128 :keysym (#xff #xbf))
               (:legend "F3" :code 107 :keysym (#xff #xc0))
               (:legend "F4" :code 126 :keysym (#xff #xc1))))
  (:row :left 13/2 :top 0
        :keys ((:legend "F5" :code 104 :keysym (#xff #xc2))
               (:legend "F6" :code 105 :keysym (#xff #xc3))
               (:legend "F7" :code 106 :keysym (#xff #xc4))
               (:legend "F8" :code 108 :keysym (#xff #xc5))))
  (:row :left 11 :top 0
        :keys ((:legend "F9"  :code 109 :keysym (#xff #xc6))
               (:legend "F10" :code 117 :keysym (#xff #xc7))
               (:legend "F11" :code 111 :keysym (#xff #xc8))
               (:legend "F12" :code 119 :keysym (#xff #xc9))))
  (:row :left 61/4 :top 0
        :keys ((:legend ("Print" "Screen") :code 113 :keysym (#xff #xca))
               (:legend ("Scroll" "Lock")  :code 115 :keysym (#xff #xcb))
               (:legend ("Pause")          :code 121 :keysym (#xff #xcc))))

  (:row :left 0 :top 3/2
        :keys ((:legend ("~" "`")      :code 58 :keysym (#x00 #x60))
               (:legend ("!" "1")      :code 26 :keysym (#x00 #x31))
               (:legend ("@" "2")      :code 27 :keysym (#x00 #x32))
               (:legend ("#" "3")      :code 28 :keysym (#x00 #x33))
               (:legend ("$" "4")      :code 29 :keysym (#x00 #x34))
               (:legend ("%" "5")      :code 31 :keysym (#x00 #x35))
               (:legend ("^" "6")      :code 30 :keysym (#x00 #x36))
               (:legend ("&" "7")      :code 34 :keysym (#x00 #x37))
               (:legend ("*" "8")      :code 36 :keysym (#x00 #x38))
               (:legend ("(" "9")      :code 33 :keysym (#x00 #x39))
               (:legend (")" "0")      :code 37 :keysym (#x00 #x30))
               (:legend ("_" "-")      :code 35 :keysym (#x00 #x2d))
               (:legend ("+" "=")      :code 32 :keysym (#x00 #x3d))
               (:legend ("Back Space") :code 59 :keysym (#xff #x08) :width 2)))

  (:row :left 0 :top 5/2
        :keys ((:legend "Tab"      :code 56 :keysym (#xff #x09) :width 3/2)
               (:legend "Q"        :code 20 :keysym (#x00 #x71))
               (:legend "W"        :code 21 :keysym (#x00 #x77))
               (:legend "E"        :code 22 :keysym (#x00 #x65))
               (:legend "R"        :code 23 :keysym (#x00 #x72))
               (:legend "T"        :code 25 :keysym (#x00 #x74))
               (:legend "Y"        :code 24 :keysym (#x00 #x79))
               (:legend "U"        :code 40 :keysym (#x00 #x75))
               (:legend "I"        :code 42 :keysym (#x00 #x69))
               (:legend "O"        :code 39 :keysym (#x00 #x6f))
               (:legend "P"        :code 43 :keysym (#x00 #x70))
               (:legend ("{" "[")  :code 41 :keysym (#x00 #x5b))
               (:legend ("}" "]")  :code 38 :keysym (#x00 #x5d))
               (:legend ("|" "\\") :code 50 :keysym (#x00 #x5c) :width 3/2)))

  (:row :left 0 :top 7/2
        :keys ((:legend "Caps Lock" :code 65 :keysym (#xff #xe5) :width 7/4)
               (:legend "A"         :code  8 :keysym (#x00 #x41))
               (:legend "S"         :code  9 :keysym (#x00 #x53))
               (:legend "D"         :code 10 :keysym (#x00 #x44))
               (:legend "F"         :code 11 :keysym (#x00 #x46))
               (:legend "G"         :code 13 :keysym (#x00 #x47))
               (:legend "H"         :code 12 :keysym (#x00 #x48))
               (:legend "J"         :code 46 :keysym (#x00 #x4a))
               (:legend "K"         :code 48 :keysym (#x00 #x4b))
               (:legend "L"         :code 45 :keysym (#x00 #x4c))
               (:legend (":" ";")   :code 49 :keysym (#x00 #x3b))
               (:legend ("\"" "'")  :code 47 :keysym (#x00 #x27))
               (:legend "Enter"     :code 44 :keysym (#xff #x0d) :width 9/4)))

  (:row :left 0 :top 9/2
        :keys ((:name "Left Shift" :legend "Shift"  :code 64 :keysym (#xff #xe1) :width 9/4)
               (:legend "Z"                         :code 14 :keysym (#x00 #x7a))
               (:legend "X"                         :code 15 :keysym (#x00 #x78))
               (:legend "C"                         :code 16 :keysym (#x00 #x63))
               (:legend "V"                         :code 17 :keysym (#x00 #x76))
               (:legend "B"                         :code 19 :keysym (#x00 #x62))
               (:legend "N"                         :code 53 :keysym (#x00 #x6e))
               (:legend "M"                         :code 54 :keysym (#x00 #x6d))
               (:legend ("<" ",")                   :code 51 :keysym (#x00 #x2c))
               (:legend (">" ".")                   :code 55 :keysym (#x00 #x2e))
               (:legend ("?" "/")                   :code 52 :keysym (#x00 #x2f))
               (:name "Right Shift" :legend "Shift" :code 68 :keysym (#xff #xe2) :width 11/4)))

  (:row :left 0 :top 11/2
        :keys ((:name "Left Control"  :legend "Ctrl"   :code 67  :keysym (#xff #xe3) :width 5/4)
               (:name "Left Option"   :legend "Option" :code 66  :keysym (#xff #xe9) :width 5/4)
               (:name "Left Alt"      :legend "Alt"    :code 63  :keysym (#xff #xe7) :width 5/4)
               (:name "Space"         :legend nil      :code 57  :keysym (#x00 #x20) :width 25/4)
               (:name "Right Alt"     :legend "Alt"    :code 69  :keysym (#xff #xea) :width 5/4)
               (:name "Right Option"  :legend "Option" :code 71  :keysym (#xff #xe8) :width 5/4)
               (:name "Menu"          :legend "Menu"   :code 118 :keysym (#x00 #x00) :width 5/4)
               (:name "Right Control" :legend "Ctrl"   :code 70  :keysym (#xff #xe4) :width 5/4)))

  (:row :left 61/4 :top 3/2
        :keys ((:legend "Help"          :code 122 :keysym (#xff #x6a)) ; Insert on Windows
               (:legend "Home"          :code 123 :keysym (#xff #x50))
               (:legend ("Page" "Up")   :code 124 :keysym (#xff #x55))))
  (:row :left 61/4 :top 5/2
        :keys ((:legend ("Del" "Fwd")   :code 125 :keysym (#xff #xff)) ; Forward delete
               (:legend "End"           :code 127 :keysym (#xff #x57))
               (:legend ("Page" "Down") :code 129 :keysym (#xff #x56))))

  (:row :left 65/4 :top 9/2
        :keys ((:legend "" :code 134 :keysym (#xff #x52)))) ; Up arrow
  (:row :left 61/4 :top 11/2
        :keys ((:legend "" :code 131 :keysym (#xff #x51))   ; Left arrow
               (:legend "" :code 133 :keysym (#xff #x54))   ; Down arrow
               (:legend "" :code 132 :keysym (#xff #x53)))) ; Right arrow
)



; Use the IBM style?
;(defparameter *xquartz-87-tenkeyless-layout*
;  '((:wide-key 0    0 1  1)    ; left top width num
;    (:row      2    0 2  5)    ; left top start end
;    (:row      13/2 0 6  9)
;    (:row      11   0 10 13)
;    (:row      61/4 0 14 16))
;)
;
;(define-ibm-keyboard-layout :xquartz-87-tenkeyless
;  :pretty-name "Xquartz 87-key Tenkeyless"
;  :numeric-id #x00030009
;  :key-layout *xquartz-87-tenkeyless-layout*
;  )

