;;; настройка моего космического корабля с четырмя комнатами
;;; используется для специальной комнаты где три окна - 
;;; transl-over перевод всего пространства слева
(fset 'transl-over
   (kmacro-lambda-form [?\C-  ?\C-e ?\M-w ?\M-d ?\C-y return ?\M-d ?\M-d] 0 "%d"))

;; перемещение вниз для удобного пользования слева
(fset 'transl-down
   (kmacro-lambda-form [?\C-n] 0 "%d"))

;; перевод предложения до точки
(fset 'transl-point
   (kmacro-lambda-form [?\C-  ?\C-s ?. ?\M-w ?\M-d ?\C-y return ?\C-l ?\M-d ?\M-d] 0 "%d"))

;; perevod do zapyatoy
(fset 'transl-zpt
   (kmacro-lambda-form [?\C-  ?\C-s ?, ?\M-w ?\M-d ?\C-y return ?\C-l ?\M-d ?\M-d] 0 "%d"))


;;; комментарии для пхп
(fset 'xphp
	  (kmacro-lambda-form [?/ ?* ?* return ?* return ?* ?\S-  ?@ ?r ?e ?t ?u ?r ?n return ?* return ?* ?/ ?\C-p ?\C-p ?\C-e ? ] 0 "%d"))