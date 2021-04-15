;;; Включаем Главный Источник MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment / uncomment this line to enable melpa stable if desired
(package-initialize)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;;; 1. включаем SLIME from Melpa
(setq inferior-lisp-program "sbcl")

;;; 2. настраиваем емакс общий вид

(setq save-abbrevs 'silent)
(setq-default abbrev-mode t)

(setq scroll-step    1)
(setq scroll-margin    10)
(setq scroll-conservatively 10000)

(setq search-highlight    t)
(setq query-replace-highlight   t)

(setq column-number-mode    1)
(setq use-dialog-box    nil)
(setq tab-width 2)
(setq-default standart-indent    4)
(setq backup-inhibited    t)



(desktop-save-mode    1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-hl-line-mode 1)
(global-linum-mode 1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq frame-title-format "Egor_GNU_ArchEmacs")
 
(require 'ido)
(ido-mode t)
(icomplete-mode t)
(setq ido-virtual-buffers  t)
(setq ido-enable-flex-matching t)

;;;для того чтобы емакс запоминал расположение буфферов для удобного копирования
(setq dired-dwim-target t)
;;; для того чтобы включить dired+
(load "/root/.emacs.d/dired+.el")
;;; для того чтобы не было в буфере диреда вроде как -1 do not reuse 1 reuse
(setq diredp-toogle-find-file-reuse-dir 1)
;;;что то не помогает но вот эта штука точно поможет
(load "/root/.emacs.d/single.el")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;подключаю мою мечту переключение между буфферами;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-unset-key (kbd "C-o"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;изучаю бродягу;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'auth-source)

;;(with-eval-after-load 'tramp(tramp-change-syntax))
;;;устанавливаем постоянное сохранение кэша паролей для бомжа


(show-paren-mode t)
(setq show-paren-style 'expression)
(electric-pair-mode 1)
(setq use-dialog-box nil)

(setq display-time-24hr-format t)
(display-time-mode t)

(set-default 'truncate-lines t)



;;; 3. Всевозможные загрузки и пакеты
;;; Load
;;; load xmodmap - for n - enter or another keyboard change
(load "/root/.emacs.d/xmodmap.el")
;;; load theme emacs doom

;;(load "/root/.emacs.d/host.el")
;;;load my macros
(load "/root/.emacs.d/macros.el")
(load "/root/.emacs.d/main-macros.el")


;;run xmodmap
(xmodmap)

;;; run doom theme

;;;;; Rrrequer
;;;include window-number
(add-to-list 'load-path (expand-file-name "~/elisp"))
(require 'window-number)
(window-number-meta-mode 1)

;;include ecb
(require 'ecb)

;;;;helm
(require 'helm)
(require 'helm-config)

(helm-mode 1)

(require 'php-mode)
;;; include auto-complete mode
(ac-config-default)


;;;подключаем веб для емакс
;; emmmet
(add-to-list 'load-path "/root/.emacs.d/elpa/emmet-mode-20180613.341/emmet-mode.el")
(add-to-list 'load-path "~/Emacs/emmet/")
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'emmet-mode)
;;; yasnippet
(add-to-list 'load-path "~/path-to-yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;; загружаем с гитхаба веб моде 
(load "/root/.emacs.d/web-mode.el")
;;;
(add-to-list 'auto-mode-alist '("\\.ts\\'".web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))



;;;4. Клавиши and macros
;;;load my macros
(load "/root/.emacs.d/macros.el")

(load "/root/.emacs.d/jump/jump.el")

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

(setq jump-local nil)


(defun ajamp ()
  "documentation ajamp"
  (interactive)
(let ((jump jump-local))
  (if (equal jump t)
      (load "/root/.emacs.d/registers/home.el")
    (load "/root/.emacs.d/registers/home-app.el")
    (load "/root/.emacs.d/registers/lesson.el"))))

 


(global-unset-key (kbd "C-o"))
(global-unset-key (kbd "C-l"))
(global-set-key (kbd "C-l") 'bookmark-jump)
(global-set-key (kbd "M-n") 'recenter-top-bottom)


(global-unset-key (kbd "M-o"))
(global-set-key (kbd "M-o") 'open-line)
(global-unset-key (kbd "C-o"))



(set-register ?t '(file . "/srv/http/tutor.php"))
(set-register ?a '(file . "/root/.emacs.d/init.el"))
(set-register ?j '(file . "/root/.emacs.d/jump/jump.el"))


 
;;; одно нужно комментировать
;;(load "/root/.emacs.d/registers/corntatus.el")
;;(load "/root/.emacs.d/registers/home.el")
;;;(load "/root/.emacs.d/registers/lesson.el")

(set-register ?0 '("corntatus_x"))
(set-register ?9 '("aldebaran"))

(set-register ?t '("$this"))
;;(set-register ?F '("flour-one"))
;;(set-register ?F '("list-ocean"))
;;(set-register ?f '("aeZO6ysRqLd5"))
(set-register ?f '("list-ocean"))


(load "/root/.emacs.d/jump/jump.el")

;; должен сам настроить модель
  


;;(global-set-key (kbd "<menu>") 'bookmark-set-save-and-save-file)
(global-set-key (kbd "<menu>") 'bookmark-set)



(global-set-key (kbd "C-q s") 'mega-copy-string)
(global-set-key (kbd "C-q f") 'mega-copy-file-mega)
(global-set-key (kbd "C-q d") 'mega-copy-direct-mega)
;;;;нужно использовать функццию kill-some-buffers и выбирать ненужные буфферы оставлять только нужные и работать с ними - пусть ненужные будут например в другом отделе емакса
(global-set-key (kbd "C-;") 'mega-switch-files)
(global-set-key (kbd "M-p") 'helm-imenu)
;;(global-set-key (kbd "C-v") 'tab-list)
;;(global-set-key (kbd "M-k") 'tab-close)


(global-set-key (kbd "C-q w") 'eww)
(global-set-key (kbd "C-q r") 'rename-buffer)
(global-unset-key (kbd "C-x ;"))
(global-set-key (kbd "C-x ;") 'switch-to-buffer)
(global-unset-key (kbd "M-k"))
(global-set-key (kbd "M-k") 'tab-close)
(global-unset-key (kbd "M-j"))

(global-set-key (kbd "M-j") 'kill-word)

(global-set-key (kbd "M-g M-j") 'goto-line)

(global-set-key (kbd "C-q a") 'next-line)
(global-set-key (kbd "C-q 1") 'previous-line)
;;(global-set-key (kbd "\ed") 'other-window)
(global-set-key (kbd "\ed") 'web-mode)
(global-set-key (kbd "s-o") 'other-window)

(global-set-key (kbd "C-x t n") 'tab-new)

(keyboard-translate ?\C-h ?\C-?)

(global-set-key "\ei" '(lambda () (interactive) (insert ?\$)))

(global-unset-key (kbd "C-v"))
(global-unset-key (kbd "M-v"))

(global-unset-key (kbd "<f2>"))
(global-set-key (kbd "<f2>") 'abbrev-mode)

(global-set-key (kbd "C-M-p") 'scroll-down-command)
(global-set-key (kbd "C-M-n") 'scroll-up-command)


(global-unset-key (kbd "C-x C-l"))
(global-set-key (kbd "C-x l") 'bookmark-jump)
(global-set-key (kbd "C-x C-l") 'bookmark-jump)


(global-unset-key (kbd "C-w"))
(global-set-key (kbd "C-w") 'save-buffer)


(global-set-key (kbd "<f9>") 'eww-new)
(global-unset-key (kbd "M-SPC"))
(global-set-key (kbd "M-SPC") 'eww)


(fset 'dired-up
   (kmacro-lambda-form [?^] 0 "%d"))
(global-set-key (kbd "C-x p") 'dired-up)

(global-set-key (kbd "<f11>") 'mega-shell)

(fset 'mega-shell
   (kmacro-lambda-form [?\M-x ?s ?h ?e ?l ?l return ?\C-x ?1 ?\C-x ?2 ?\C-\; ?\C-x ?o] 0 "%d"))


(global-set-key (kbd "M-;") 'tab-next)



;;;; prepare for translate
(global-unset-key (kbd "C-<tab>"))
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "M-z"))
(global-unset-key (kbd "C-q C-q"))

(global-set-key (kbd "C-x w") 'kill-region)


;;;; для перевода текстов
(global-set-key (kbd "C-q C-q") 'transl-down)

(global-set-key (kbd "C-<tab>") 'transl-over)
(global-set-key (kbd "M-z") 'transl-zpt)
;;; for note serpentence
;;; for php function macros
;;;5. Аббревы
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;my abbrev
(load "/root/.emacs.d/aabrev.el")
;;theme yoshi



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   [("#181818" . "#282828")
    ("#ab4642" . "#dc9656")
    ("#a1b56c" . "#383838")
    ("#f7ca88" . "#383838")
    ("#7cafc2" . "#585858")
    ("#ba8baf" . "#b8b8b8")
    ("#86c1b9" . "#d8d8d8")
    ("#ffffff" . "#ffffff")])
 '(ansi-term-color-vector
   [unspecified "#1c1e26" "#e95678" "#29d398" "#fac29a" "#26bbd9" "#ee64ac" "#26bbd9" "#cbced0"] t)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(custom-safe-themes
   '("a9c94c71c3ea9be5910f1600b6dfdbf3e0b65a61f31a4bc36e22b8402c333377" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "be0efbaebc85494f3c1c06e320fd13a24abf485d5f221a90fe811cea9a39ed85" "2047464bf6781156ebdac9e38a17b97bd2594b39cfeaab561afffcbbe19314e2" "fe349b21bb978bb1f1f2db05bc87b2c6d02f1a7fe3f27584cd7b6fbf8e53391a" "9dc64d345811d74b5cd0dac92e5717e1016573417b23811b2c37bb985da41da2" "2db65c4ef21dc93dd0d8f27d890637093e977658b7a70d55bedaaa1b7f973d85" "690ae280f6d805719491ad46976be23a87799f2c7fa569003de463532af95e6c" "a6473f7abf949f4a6a1a9cc0dd37ea2e35ba3cea65d3442b98d65c5c5c5cb8d7" "043c8375cad0cf1d5c42f5d85cbed601075caf09594da04a74712510e9437d2b" "91375c6dc506913ac7488f655b5afe934f343a0b223021c349105d37748c6696" "fb44ced1e15903449772b750c081e6b8f687732147aa43cfa2e7d9a38820744b" "c2efd2e2e96b052dd91940b100d86885337a37be1245167642451cf6da5b924a" "65f35d1e0d0858947f854dc898bfd830e832189d5555e875705a939836b53054" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "5b7c31eb904d50c470ce264318f41b3bbc85545e4359e6b7d48ee88a892b1915" "1fbd63256477789327fe429bd318fb90a8a42e5f2756dd1a94805fc810ae1b62" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "5f6eea84fb7ecacd74cd8d61e59e3839a2815f455313917c3c7a6521329cfdd4" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "4a6fc624dc5cde09777da68ad30686527df6574eea88877554134b153ed4515d" "5c270205725485508b491bbc6cd1fc8a6c149b4470882c5c5fa92f4272fde91f" "ca2e59377dc1ecee2a1069ec7126b453fa1198fed946304abb9a5b8c7ad5404d" "dc11cee30927281fe3f5c77372119d639e77e86aa794dce2a6ff019afdfbec9e" "b375fc54d0c535bddc2b8012870008055bf29d70eea151869e6ad7aaaadb0d24" "8ca8fbaeaeff06ac803d7c42de1430b9765d22a439efc45b5ac572c2d9d09b16" "13880fa28757754bc40c85b05689c801ddaa877f2fe65abf1779f37776281ef1" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" default))
 '(ecb-layout-name "top1")
 '(ecb-source-path '(("/" "/")))
 '(fci-rule-color "#c7c7c7")
 '(helm-completion-style 'emacs)
 '(hl-todo-keyword-faces
   '(("TODO" . "#e834f9")
     ("NEXT" . "#e834f9")
     ("THEM" . "#0ed1d1")
     ("PROG" . "#1de9b6")
     ("OKAY" . "#00a6fb")
     ("DONT" . "#ff9505")
     ("FAIL" . "#f11235")
     ("DONE" . "#02d849")
     ("NOTE" . "#ffb627")
     ("KLUDGE" . "#fb6107")
     ("HACK" . "#a359fe")
     ("TEMP" . "#c0c0bd")
     ("FIXME" . "#e834f9")
     ("DEPRECATED" . "#ff9505")
     ("REVIEW" . "#b27701")
     ("XXX" . "#e834f9")
     ("XXXX" . "#e834f9")
     ("\\?\\?\\?+" . "#e834f9")))
 '(jdee-db-active-breakpoint-face-colors (cons "#1b1d1e" "#fc20bb"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1b1d1e" "#60aa00"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1b1d1e" "#505050"))
 '(nrepl-message-colors
   '("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c"))
 '(objed-cursor-color "#d02b61")
 '(package-selected-packages
   '(tramp-auto-auth image-dired+ magit cpp-auto-include projectile helm-projectile ssh-deploy tramp-term lorem-ipsum wikinfo afternoon-theme ahungry-theme airline-themes almost-mono-themes ample-theme ample-zen-theme anti-zenburn-theme apropospriate-theme arc-dark-theme arjen-grey-theme atom-dark-theme atom-one-dark-theme autumn-light-theme badger-theme badwolf-theme base16-theme basic-theme berrys-theme birds-of-paradise-plus-theme blackboard-theme bliss-theme borland-blue-theme boron-theme brutal-theme brutalist-theme bubbleberry-theme busybee-theme calmer-forest-theme caroline-theme chocolate-theme chyla-theme circadian cloud-theme clues-theme colonoscopy-theme color-theme color-theme-approximate color-theme-buffer-local color-theme-modern color-theme-sanityinc-solarized color-theme-sanityinc-tomorrow color-theme-x alect-themes cycle-themes modus-themes helm-themes avk-emacs-themes nyx-theme minsk-theme tao-theme theme-looper ayu-theme toxi-theme kaolin-themes humanoid-themes colorless-themes lab-themes company-web yasnippet emmet-mode web-mode zeno-theme yoshi-theme window-number theme-magic slime select-themes php-mode one-themes idomenu helm go-translate ecb doom-themes cherry-blossom-theme challenger-deep-theme babel auto-complete acme-theme))
 '(pdf-view-midnight-colors '("#232333" . "#c7c7c7"))
 '(rustic-ansi-faces
   ["#1b1d1e" "#d02b61" "#60aa00" "#d08928" "#6c9ef8" "#b77fdb" "#00aa80" "#dddddd"])
 '(send-mail-function 'mailclient-send-it)
 '(vc-annotate-background "#ffffff")
 '(vc-annotate-color-map
   '((20 . "#ab4642")
     (50 . "#dc9656")
     (80 . "#f7ca88")
     (110 . "#a1b56c")
     (140 . "#86c1b9")
     (170 . "#7cafc2")
     (200 . "#ba8baf")
     (230 . "#a16046")
     (260 . "#181818")
     (290 . "#282828")
     (320 . "#383838")
     (350 . "#585858")))
 '(vc-annotate-very-old-color "#585858"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;; 7. functions lisper's

(defun eww-new ()
  (interactive)
  (let ((url (read-from-minibuffer "yee fuck the system new url: ")))
    (switch-to-buffer (generate-new-buffer "eww"))
    (eww-mode)
    (eww url)))

(defun my-web-mode-hook ()
  "HOOKS for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)

(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

(defun my-web-mode-hook ()
  (set (make-local-variable 'company-backends) '(company-css company-web-html company-yasnippet company-files)))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'emmet-mode)
(add-hook 'web-mode-before-auto-complete-hooks
    '(lambda ()
     (let ((web-mode-cur-language
  	    (web-mode-language-at-pos)))
               (if (string= web-mode-cur-language "php")
    	   (yas-activate-extra-mode 'php-mode)
      	 (yas-deactivate-extra-mode 'php-mode))
               (if (string= web-mode-cur-language "css")
    	   (setq emmet-use-css-transform t)
      	 (setq emmet-use-css-transform nil)))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;подключаю мою мечту переключение между буфферами;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; s -super key window
(global-set-key (kbd "s-a") 'other-window)
(global-set-key (kbd "s-d") 'other-window)


(global-unset-key (kbd "C-c C-x"))
(global-set-key (kbd "C-c C-x") 'funfun)

(global-unset-key (kbd "C-c ;"))
(global-set-key (kbd "C-c ;") 'funend)
;;;emmet mode invoke
(global-set-key (kbd "<f3>") 'emmet-mode)
(global-set-key (kbd "<f4>") 'web-mode)
(global-set-key (kbd "<f5>") 'php-mode)
;;; 8 register
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "C-x c") 'copy-to-register)
(global-unset-key (kbd "C-x i"))
(global-set-key (kbd "C-x i") 'insert-register)
(global-set-key (kbd "C-x n 2") 'bookmark-set)

(global-unset-key (kbd "C-x s"))
(global-set-key (kbd "C-x s") 'replace-string)
(global-set-key (kbd "C-x C-s") 'replace-string)

(global-unset-key (kbd "C-x C-n"))
(global-set-key (kbd "C-x C-n C-s") 'replace-string)
(global-set-key (kbd "C-x C-n s") 'replace-string)




(defun restart-emacs ()
  (interactive)
  ;; We need the new emacs to be spawned after all kill-emacs-hooks
  ;; have been processed and there is nothing interesting left
  (let ((kill-emacs-hook (append kill-emacs-hook (list (if (display-graphic-p)
                                                           #'launch-separate-emacs-under-x
                                                         #'launch-separate-emacs-in-terminal)))))
    (save-buffers-kill-emacs)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;matrix;;;;;;;
(fset 'matrix
			(kmacro-lambda-form [?\M-x ?c ?u ?s ?t ?o ?m ?i ?z ?e ?- ?t ?h ?e ?m ?e ?s return ?\C-s ?m ?a ?t ?r ?i ?x ?\C-a return ?y ?y ?q ?q] 0 "%d"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun php-go ()
  "подключение нужных библиотек yii"
  (interactive)
  (insert "<?=   ?>")
  (backward-char 4))


(global-set-key (kbd "C-c 1") 'php-go)
(global-set-key (kbd "C-c 2") 'php-go)


(defun yii-include-html ()
  "подключение нужных библиотек yii"
  (interactive)
  (insert "
use yii\\helpers\\Html;
"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;installing yii2
(defun yii2-install (name-directory)
  "установка через композитора"
  (interactive "s")
  (insert "
composer create-project --prefer-dist yiisoft/yii2-app-basic ")
  (insert (message name-directory)))


(global-set-key (kbd "C-x j") 'jump-to-register)
(global-set-key (kbd "C-x C-j") 'jump-to-register)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;мои регистры для быстрого доступа к директориям


(defun yii-controller()
  (interactive)
  (insert "<?php

namespace app\\controllers;

use Yii;
use yii\\filters\\AccessControl;
use yii\\web\\Controller;
use yii\\web\\Response;
use yii\\filters\\VerbFilter;
use app\\models\\LoginForm;
use app\\models\\ContactForm;

"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;функция инициилизирует пхп;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun invoke-php()
  "функция инициилизирует пхп"
  (interactive)
  (insert "<?php   ?>")
  (left-char 4))
(global-set-key (kbd "C-c 4") 'invoke-php)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;для того чтобы из одного окна сделать два одинаковых
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun mega-two-window ()
  "делаем из одного окна два одинаковых"
  (interactive)
  (delete-other-windows)
  (split-window))
(global-set-key (kbd "C-x n 2") 'mega-two-window)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun yii-initial-layout()
  "инициилизируем шаблон"
  (interactive)
  (insert "<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\\widgets\\Alert;
use yii\\helpers\\Html;
use yii\\bootstrap\\Nav;
use yii\\bootstrap\\NavBar;
use yii\\widgets\\Breadcrumbs;
use app\\assets\\AppAsset;

AppAsset::register($this);
?>
"))

(put 'set-goal-column 'disabled nil)

(defun yii-view()
  (interactive)
  (insert "<?php

use yii\\helpers\\Html;
use yii\\helpers\\Url;
use yii\\widgets\\ActiveForm;

$this-> title = 
")
  (previous-line 1))


(global-set-key (kbd "C-v f") 'mega-yii-insert-layout)


(defun yii-model()
  (interactive)
  (insert "<?php

namespace app\\models;

use yii\\db\\ActiveRecord;

"))



(fset 'ww3
   (kmacro-lambda-form [?\C-b ?\C-b ?\C-c ?2] 0 "%d"))

(fset 'www-a
   (kmacro-lambda-form [?\C-s ?a ?\C-b ?\C-b ?\C-b] 0 "%d"))




(global-set-key (kbd "C-c a") 'ww3)



(fset 'ww-ww-ww
   (kmacro-lambda-form [?\C-w ?\M-d ?g ?\M-d] 0 "%d"))



;;(global-set-key (kbd "<menu>") 'ww-ww-ww)

(global-set-key (kbd "<s-f2>") 'muscul) 

(defun yii-after-install()
  "после установочные удаления for shell"
  (interactive)
  (insert "cd yii0; cd controllers; rm -r SiteController.php; cd ..;
cd views; rm -r site; cd ..; rm -r models; mkdir models; cd views; cd layouts; rm -r main.php
"))
(global-set-key (kbd "s-0") 'yii-after-install)


(global-set-key (kbd "s-<") 'ewww-wwwork)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;вообще интересная штука мой емакс - будет на других серверах
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'tramp-term)


;;;; от Кристиана Йохансана деплой
(add-to-list 'load-path "~/.emacs.d/ssh-deploy/")
(require 'ssh-deploy)
;; if you want mode-line feature
(ssh-deploy-line-mode)
;; if you want menu-bar feautre
(ssh-deploy-add-menu)
;; if you want automatic upload support
(ssh-deploy-add-after-save-hook)
;; if you want detecting remote changes support
(ssh-deploy-add-find-file-hook)
(global-unset-key (kbd "C-c C-z"))
(global-set-key (kbd "C-c C-z") 'ssh-deploy-prefix-map)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;для моей работы изучаю битрикс это фреймворк пхп;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun b-prolog-included
    ()
  (interactive)
  (insert "<? if(!defined('B_PROLOG_INCLUDED') || B_PROLOG_INCLUDED!==true)die();?>\n"))
(global-set-key (kbd "C-c b") 'b-prolog-included)


(defun ебаш-скобочки
    ()
  (interactive)
  (insert "()->"))

(global-set-key (kbd "C-c 9") 'ебаш-скобочки)


(defun bitrix-header
    ()
  (interactive)
  (insert "<?php  require($_SERVER['DOCUMENT_ROOT']. '/bitrix/header.php'); ?>"))
(global-set-key (kbd "C-c h") 'bitrix-header)



(defun bitrix-footer
    ()
  (interactive)
(insert "<?php  require($_SERVER['DOCUMENT_ROOT']. '/bitrix/footer.php'); ?> "))
(global-set-key (kbd "C-c f") 'bitrix-footer)




(setq auto-save-default nil)




(defun mega-capitalize-word
    ()
  (interactive)
  (backward-word)
  (upcase-word 1))

(global-set-key(kbd "C-z") 'mega-capitalize-word)



(fset 'change-theme
   (kmacro-lambda-form [?\M-x ?c ?u ?s ?t ?o ?m ?i ?z ?e ?- ?t ?h ?e ?m ?e ?s return ?\C-s ?m ?a ?t ?r ?i ?x ?\C-a return ?\C-x ?k return] 0 "%d"))
(change-theme)




(global-unset-key (kbd "C-x l"))
(global-set-key (kbd "C-x l") 'helm-mark-ring)


(global-set-key (kbd "C-x g") 'grep-find)


(defun mega-capitalize-two-word
    ()
  (interactive)
  (backward-word 2)
  (upcase-word 2))
(global-set-key (kbd "C-<") 'mega-capitalize-two-word)
(put 'narrow-to-region 'disabled nil)

(global-set-key (kbd "C-q q") 'mega-mega-kill)

;;(pdf-tools-install)


(fset 'my-hook-one
   (kmacro-lambda-form [?\C-  ?\C-a ?\C-x ?c ?c ?\C-e return ?\C-x ?i ?c tab] 0 "%d"))
(global-set-key (kbd "C-c SPC") 'my-hook-one)


(global-set-key (kbd "C-c c") 'xphp)

(global-unset-key (kbd "C-v"))

(fset 'forPHP
      (kmacro-lambda-form [?\C-e return ?\{ return] 0 "%d"))
(global-set-key (kbd "C-c x") 'forPHP)


(require 'cpp-auto-include)

(fset 'elePHPanCORRECT
   (kmacro-lambda-form [?\C-x ?h ?\C-x ?s ?  ?- ?> ?  return ?- ?> return ?\C-x ?h ?\C-x ?s ?t ?h ?  return ?$ ?t ?h ?i ?s ?- ?> return ?\C-w] 0 "%d"))
(global-set-key (kbd "<f10>") 'elePHPanCORRECT)


(defun printCurver
    ()
  (interactive)
  "напишем скобочки и двоеточие"
  (insert "():"))
(global-set-key (kbd "C-c :") 'printCurver)


;;;; макрос для начала работы - вызывается шелл а затем он удаляется
(fset 'initialize-shell-kill
   (kmacro-lambda-form [?\M-x ?s ?h ?e ?l ?l return ?\C-x ?k return ?y ?\C-x ?1] 0 "%d"))

(initialize-shell-kill)

(defun displayAnotherWindow
    ()
  "показываем в другом окне следующий экран снизу - возвращаемся назад"
  (interactive)
  (save-excursion
    (other-window 1)
    (scroll-up-command 10)
    (other-window 1)))


(global-set-key (kbd "C-x x") 'displayAnotherWindow)
(global-set-key (kbd "C-x C-x") 'displayAnotherWindow)

(defun var_dump
    ()
  "строим незаменимое средство для отладки показывает содержимое класса"
  (interactive)
  (insert "var_dump()")
  (backward-char 1))

(global-set-key (kbd "C-v v") 'mega-var-dump-php)
(global-set-key (kbd "C-v C-v") 'mega-var-dump-php)
 

;;;; подключаю систему для работы с гит majit
(require 'magit)

(global-set-key (kbd "C-'") 'magit-status)




;;;; может быть макрос для доступа к удаленной моей базе данных
(fset 'goRemoteDatabase
   (kmacro-lambda-form [?m ?y ?s ?q ?l ?  ?- ?u ?  ?c ?o ?r ?n ?t ?a ?t ?u ?s ?_ ?x ?  ?- ?p return ?a ?l ?d ?e ?b ?a ?r ?a ?n return ?u ?s ?e ?  ?c ?o ?r ?n ?t ?a ?t ?u ?s ?_ ?x ?\; return] 0 "%d"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;вызов emacs дифф режима
(global-set-key (kbd "C-v d") 'ediff)



(global-set-key (kbd "C-x n w") 'web-mode)
(global-unset-key (kbd "C-x n p"))
(global-set-key (kbd "C-x n p") 'php-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;создадим заполнение для модели на yii2
(defun model() "заполнение для модели на yii2" (interactive) (insert "<?php  \nnamespace app\\models;\nuse Yii;\nuse yii\\base\\Model;\n\n"))


(require 'tramp-auto-auth)

(add-to-list
 'tramp-auto-auth-alist
 '("root@10\\.0\\." .
   (:host "Funny-Machines" :user "root" :port "ssh")))

(tramp-auto-auth-mode)


(auth-source-remember '(:host "Funny-Machines" :user "root" :port "ssh")
		      '((:secret "$r00tP#sWD!")))

 (defun my-macro-query (arg)
      "Prompt for input using minibuffer during kbd macro execution.
    With prefix argument, allows you to select what prompt string to use.
    If the input is non-empty, it is inserted at point."
      (interactive "P")
      (let* ((query (lambda () (kbd-macro-query t)))
             (prompt (if arg (read-from-minibuffer "PROMPT: ") "Input: "))
             (input (unwind-protect
                        (progn
                          (add-hook 'minibuffer-setup-hook query)
                          (read-from-minibuffer prompt))
                      (remove-hook 'minibuffer-setup-hook query))))
        (unless (string= "" input) (insert input))))


;;; маскросы для переводческого отдела
(global-set-key (kbd "C-<tab>") 'целиком-все-переводим)
(global-set-key (kbd "s-<") 'переводим-до-точки)

(setq auth-sources '("~/.authinfo.gpg" "~/.authinfo"))


(customize-set-variable 'ange-ftp-netrc-filename "~/.authinfo.gpg")

;;; заклинание для бомжа чтобы он не стирал пароли
(setq password-cache-expiry nil)

;;(setq tramp-default-method "ssh")









