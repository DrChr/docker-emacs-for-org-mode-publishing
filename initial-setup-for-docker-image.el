;; initial-setup-for-docker-image.el --- Setup Emacs in image for
;; publishing org-mode project on Gitlab Pages.
;;
;; Repository: https://github.com/DrChr/docker-emacs-for-org-mode-publishing

;;; Commentary:
;;
;; This script is intended to be used once during the building of a
;; Docker image.

;;; Code:

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-refresh-contents)
(package-install 'org-plus-contrib)
(package-install 'htmlize)

;;; initial-setup-for-docker-image.el
