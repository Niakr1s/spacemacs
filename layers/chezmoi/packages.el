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
    (spacemacs/declare-prefix "od" "dotfiles")
    (spacemacs/set-leader-keys
      "odd" 'chezmoi-diff
      "odf" 'chezmoi-find
      "odw" 'chezmoi-write
      )
    )
