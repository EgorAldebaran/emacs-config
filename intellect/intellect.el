;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;моя программа для прыжков
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq цена-акции 100)

(setq уровень 101)

(let ((GOOGLE цена-акции)
      (LEVEL-GOOGLE уровень))
  (if (> GOOGLE LEVEL-GOOGLE)
      (message "продаю")
    (message "покупаю")))

;;; переключатель находится в двух режимах - если истина то регистры домашние если путсота - то регистры далеких баз

(setq jump-local t)


(let ((jump jump-local))
  (if (equal jump t)
      (load "/root/.emacs.d/registers/home.el")
    (message "/root/.emacs.d/registers/lesson.el")))






