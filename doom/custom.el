(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-indent-guides-auto-enabled t)
 '(highlight-indent-guides-auto-even-face-perc 54)
 '(highlight-indent-guides-auto-odd-face-perc 27)
 '(highlight-indent-guides-method 'column)
 '(magit-todos-insert-after '(bottom) nil nil "Changed by setter of obsolete option `magit-todos-insert-at'")
 '(package-selected-packages '(evil-multiedit eg)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Flyspells settings
(require 'ispell)
(add-to-list 'ispell-local-dictionary-alist '("ru_RU"
                                              "[[:alpha:]]"
                                              "[^[:alpha:]]"
                                              "[']"
                                              t
                                              ("-d" "ru_RU"); Dictionary file name
                                              nil
                                              utf-8))

(add-to-list 'ispell-local-dictionary-alist '("en_US"
                                              "[[:alpha:]]"
                                              "[^[:alpha:]]"
                                              "[']"
                                              t
                                              ("-d" "en_US")
                                              nil
                                              utf-8))

(setq ispell-program-name "hunspell"          ; Use hunspell to correct mistakes
      ispell-dictionary   "en_US")            ; Default dictionary to use

(defun  fd-switch-dictionary()
  "Switch russian and english dictionaries."
  (interactive)
  (let* ((dict ispell-current-dictionary)
         (new (if (string= dict "ru_RU") "en_US"
                "ru_RU")))
    (ispell-change-dictionary new)
    (message "Switched dictionary from %s to %s" dict new)))

(global-set-key (kbd "<f8>") 'fd-switch-dictionary)
