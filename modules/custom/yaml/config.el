;;; custom/yaml/config.el -*- lexical-binding: t; -*-

;; Use yamlfmt to format YAML files
;; https://github.com/google/yamlfmt
(use-package! apheleia
  :config
  (push '(yamlfmt . ("yamlfmt" "-in" "-quite"))
        apheleia-formatters)
  (setf (alist-get 'yaml-mode apheleia-mode-alist)
        'yamlfmt))
