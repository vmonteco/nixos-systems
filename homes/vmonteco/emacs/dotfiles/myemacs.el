;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    .myemacs.el                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: vmonteco </var/spool/mail/vmonteco>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2023/05/20 06:25:44 by vmonteco          #+#    #+#              ;
;    Updated: 2026/06/12 17:54:30 by vmonteco         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)

;;; Misc and general settings:
(setq line-number-mode t)
(setq column-number-mode t)

;; Enabling mouse mode:
(xterm-mouse-mode)

;; Line wrap :
(global-visual-line-mode t)

;; xclip:
(xclip-mode 1)
