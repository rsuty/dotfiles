;;; exwm-adal.el -*- lexical-binding: t; -*-

(defun efs/exwm-update-class ()
  (exwm-workspace-rename-buffer exwm-class-name))


(use-package exwm
  :config
  (setq exwm-workspace-number 5)
  (add-hook 'exwm-update-class-hook #'efs/exwm-update-class)
  (require 'exwm-randr)
  (exwm-randr-enable)
  (require 'exwm-systemtray)
  (exwm-systemtray-enable)
  (exwm-enable))
