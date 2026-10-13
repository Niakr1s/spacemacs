;; ~/.spacemacs.d/layers/chezmoi/packages.el  -*- lexical-binding: t; -*-

(defconst chezmoi-packages
  '(
    chezmoi
    ))

(defun chezmoi/init-chezmoi ()
  "Initialize chezmoi"
  (use-package chezmoi
    :init
    (package-activate 'chezmoi)
    (spacemacs/declare-prefix "oc" "chezmoi")
    (spacemacs/set-leader-keys
      "ocd" 'chezmoi-diff
      "ocf" 'chezmoi-find
      "ocw" 'chezmoi-write
      )))
