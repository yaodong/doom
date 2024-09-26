;;; custom/python/config.el -*- lexical-binding: t; -*-

(defun setup-python-dev()
  "Prepare Python development environment by install required packages."
  (interactive)
  (let* ((default-directory (expand-file-name default-directory))
         (packages '("isort" "pyflakes" "black"))
         (command (concat "pip install " (string-join packages " "))))
    (async-shell-command command
                         "*Python Dev Env Setup*"
                         "*Python Dev Env Setup Error*")
    (message "Installing Python development packages: %s"
             (string-join packages ", "))))