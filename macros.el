;;; mega dired
(fset 'mega-dired
   (kmacro-lambda-form [?\M-x ?d ?i ?r ?e ?d return return] 0 "%d"))
(global-unset-key (kbd "C-M-d"))
(global-set-key (kbd "C-M-d") 'mega-dired)


;;mega-kill
(fset 'mega-mega-kill
   (kmacro-lambda-form [?\M-x ?k ?i ?l ?l ?- ?b ?u ?f ?f ?e ?r return return ? ] 0 "%d"))
(global-set-key (kbd "M-q") 'mega-mega-kill)
 

;;; mega switch buffer
(fset 'mega-switch-files
   (kmacro-lambda-form [?\C-x ?\; return] 0 "%d"))


;;; my shell translator
(fset 'invoke-transl
   (kmacro-lambda-form [?\M-x ?s ?h ?e ?l ?l return ?t ?r ?a ?n ?s ?  ?- ?s ?h ?e ?l ?l ?  ?e ?n ?: ?r ?u return ?\C-p ?\C-p ?\C-p ?\C-a ?\C-k ?\C-k ?\C-k ?\C-k ?\C-k ?\C-k ?\C-k ?\C-k ?\M-x ?r ?e ?n ?a ?m ?e ?- ?b ?u ?f ?f ?e ?r return ?t ?r ?a ?n ?s ?l return ?\M-d] 0 "%d"))
(global-unset-key (kbd "<f1>"))
(global-set-key (kbd "<f1>") 'invoke-transl)

;;; my mega clear
(fset 'mega-clear
   (kmacro-lambda-form [?\C-x ?h backspace] 0 "%d"))
(global-unset-key (kbd "C-q"))
(global-set-key (kbd "C-q k") 'mega-clear)



;;;; ищет слово Русский и заходит туда
(fset 'rus
	  (kmacro-lambda-form [?\C-s ?\C-\\ ?r ?u ?s return ?h with-input-method ?e with-input-method ?c with-input-method ?c with-input-method ?r with-input-method ?b with-input-method ?q with-input-method return ?\C-\\ ?\C-a ?\C-f ?\C-f return] 0 "%d"))

;;;; my note serpentes
(fset 'note
   (kmacro-lambda-form [?_] 0 "%d"))

;;; function for php
(fset 'funfun
      (kmacro-lambda-form [?\( ?\C-f return ?\{ ?\} ?\C-b return ] 0 "%d"))


(fset 'funend
	  (kmacro-lambda-form [?\( ?\C-e ?\;] 0 "%d"))


;;;;; mega copy file
;;;нужно чтобы было только два активных фрейма верхнее-или-левое будет донором нижнее-правое вампиром
(fset 'mega-copy-file-mega
   (kmacro-lambda-form [?\C-  ?\C-e ?\C-x ?c ?c ?\M-b ?\C-  ?\C-e ?\M-w ?\M-< ?\C-  ?\C-e ?\C-b ?\C-x ?c ?x ?\M-d ?\M-< ?\C-  ?\C-e ?\C-b ?\C-x ?c ?\; ?\M-! ?c ?p ?  ?\C-x ?i ?x ?/ ?\C-x ?i ?c ?  ?\C-x ?i ?\; ?/ return ?g ?\M-d ?\C-s ?\C-y return ?\C-n] 0 "%d"))

(fset 'mega-copy-direct-mega
      (kmacro-lambda-form [?\C-  ?\C-e ?\C-x ?c ?c ?\M-b ?\C-  ?\C-e ?\M-w ?\M-< ?\C-  ?\C-e ?\C-b ?\C-x ?c ?x ?\M-d ?\M-< ?\C-  ?\C-e ?\C-b ?\C-x ?c ?\; ?\M-! ?c ?p ?  ?\C-? ?\C-? ?R ?  ?\C-x ?i ?x ?/ ?\C-x ?i ?c ?  ?\C-x ?i ?\; ?/ return ?g ?\M-d ?\C-s ?\C-y return ?\C-n] 0 "%d"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;макрос позволяет копировать файл источника шаблона и вставлять в нужное место
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'mega-yii-insert-layout
      (kmacro-lambda-form [?\C-s ?\" return ?\C-  ?\C-s ?\" ?\C-b ?\C-x ?c ?c ?\M-d ?\' ?\C-x ?i ?c ?\' ?, return ?\M-d ?\C-a] 0 "%d"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; вызываем мускул для работы с базами данных
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'muscul
      (kmacro-lambda-form [f11 ?m ?y ?s ?q ?l return ?u ?s ?e ?  ?y ?i ?i return ?\C-q ?k ?\C-q ?r ?m ?u ?s ?k ?u ?l return] 0 "%d"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; делаю все чтобы поработить Yii2 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'bookmark-set-save-and-save-file
      (kmacro-lambda-form [?\M-x ?b ?o ?o ?k ?m ?a ?r ?k ?- ?s ?e ?t return return ?\C-w ?\M-x ?b ?o ?o ?k ?m ?a ?r ?k ?- ?s ?a ?v ?e return] 0 "%d"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;для удобного скроллинга кунг-фу практик
(fset 'www-lesson
   (kmacro-lambda-form [?\C-w menu ?\M-d ?\C-\M-n ?\M-n ?\M-n ?\M-n ?\M-d] 0 "%d"))

;;;; копирует всю строку в регистр буквы с
(fset 'mega-copy-string
   (kmacro-lambda-form [?\C-a ?\C-  ?\C-e ?\C-x ?c ?c return ?\C-x ?i ?c tab] 0 "%d"))

(fset 'ww-href
   (kmacro-lambda-form [?\C-a ?\C-s ?= return ?\C-d ?\C-d ?  ?\" ?\C-b ?\" ?\C-b ?  ?\C-b] 0 "%d"))

;;;;; вход в кавычки
(fset 'w-kav
      (kmacro-lambda-form [?\C-r ?= ?\C-d ?\C-d ?\C-d ?  ?= ?\C-? ?  ?\" ?\C-? ?\" ?\C-b] 0 "%d"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; работа с английским языком
(fset 'ewww-wwwork
   (kmacro-lambda-form [?\C-a ?\C-  ?\C-e ?\M-w ?\M-d ?\C-x ?h ?\C-? ?\C-y return ?\M-d ?\C-n ?\C-a] 0 "%d"))



;;;;; супер нужный вар дамп
(fset 'mega-var-dump-php
   (kmacro-lambda-form [?\C-r ?$ return ?\C-f ?\C-  ?\M-f ?\C-x ?c ?c ?\C-e return return ?e ?c ?  ?\' ?  ?p ?r ?e ?\C-j ?  ?\' ?\; return return ?e ?c ?  ?\C-e ?\; ?\C-p ?v ?a ?r ?_ ?d ?u ?m ?p ?\( ?\C-x ?i ?c ?\M-b ?$ ?\C-e ?\; ?\C-w] 0 "%d"))



 

(fset 'целиком-все-переводим
   (kmacro-lambda-form [?\C-a ?\C-  ?\C-e ?\C-x ?c ?c ?\s-o ?\C-x ?h ?\C-? ?\C-y return ?\C-x ?h ?\C-? ?\C-x ?i ?c return ?\s-o] 0 "%d"))


(fset 'переводим-до-точки
   (kmacro-lambda-form [?\C-  ?\C-s ?. ?\C-x ?c ?c ?\C-x ?o ?\C-x ?h ?\C-? ?\C-x ?i ?c return ?\s-o] 0 "%d"))
