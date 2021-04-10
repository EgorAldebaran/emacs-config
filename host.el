;; include php host 8080 for yii2 for basic directory

(defun host (body)
  (interactive)
  "вызывает локальный хост для пхп"
  (shell)
  (insert "cd /srv/http/")
  (insert (message "%s" body))
  (insert ";")
  (insert "php -S localhost:8080 -t web"))

(fset 'name-host
	  (kmacro-lambda-form [?\M-x ?r ?e ?n ?a ?m ?e ?- ?b ?u ?f ?f ?e ?r return ?h ?o ?s ?x] 0 "%d"))

(fset 'press-enter
   (kmacro-lambda-form [return] 0 "%d"))

(defun mega-host ()
  (interactive)
  (host "basic")
  (press-enter)
  (name-host))

(mega-host)











