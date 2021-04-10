;;;; xmodmap for my work


(fset 'press-enter
	  (kmacro-lambda-form [return] 0 "%d"))

(fset 'press-exit
   (kmacro-lambda-form [?\M-x ?k ?i ?l ?l ?- ?b ?u ?f ?f ?e ?r ?- ?a ?n ?d ?- ?w ?i ?n ?d ?o ?w return ?y] 0 "%d"))


(defun xmodmap ()
  "вызывает нужное мне сочетание для клавиатуры"
  (interactive)
  (shell)
  (insert "cd /root/;n")
  (press-enter)
  (press-exit))


