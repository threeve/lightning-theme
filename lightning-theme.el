
(deftheme lightning
  "Theme based on Salesforce's Lightning Design System.")

(let* (;; colors
       (biscay "#16325c")
       (casper "#9faab5")
       (emerald "#4bca81")
       (flush-mahogany "#c23934")
       (geyser "#d8dde6")
       (kashmir-blue "#54698d")
       (koromiko "#ffb75d")
       (link-water "#f4f6f9")
       (midnight-blue "#00396b")
       (pippen "#ffdde1") ; pink
       (science-blue "#0070d2")
       (tangerine "#ff9a3c")
       (white-lilac "#eef1f6")

       ;; semantics
       (bg-default link-water)
       (text-default biscay)
       )
  
  (custom-theme-set-faces
   'lightning

   `(cursor ((t (:background ,text-default :foreground ,bg-default))))
   `(default ((t (:background ,bg-default :foreground ,text-default))))
   `(fringe ((t (:background ,white-lilac))))
   `(hl-line ((t (:background ,white-lilac))))
   `(link ((t (:foreground ,science-blue :underline t))))
   `(link-visited ((t (:inherit link :foreground ,midnight-blue))))
   `(mode-line ((t (:background ,geyser))))
   `(mode-line-inactive ((t (:inherit mode-line :foreground ,casper))))
   `(region ((t (:background ,geyser))))
   `(vertical-border ((t (:foreground ,casper))))

   `(success ((t (:foreground ,emerald :weight semibold))))
   `(warning ((t (:foreground ,koromiko))))
   `(error ((t (:foreground ,flush-mahogany :weight semibold))))

   `(font-lock-builtin-face ((t (:background ,bg-default :foreground ,text-default))))
   `(font-lock-comment-face ((t (:foreground ,casper))))
   `(font-lock-keyword-face ((t (:foreground ,text-default))))
   `(font-lock-string-face ((t (:foreground ,science-blue))))
   `(font-lock-type-face ((t (:foreground ,text-default))))
   `(font-lock-warning-face ((t (:foreground ,flush-mahogany))))

   ;; modes
   `(indent-guide-face ((t (:foreground ,geyser :weight light))))

   `(flycheck-error ((t (:underline (:style wave :color ,flush-mahogany)))))
   `(flycheck-info ((t (:underline (:style wave :color ,emerald)))))
   `(flycheck-warning ((t (:underline (:style wave :color ,koromiko)))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list
   'custom-theme-load-path
   (file-name-as-directory (file-name-directory load-file-name))))
 
(provide-theme 'lightning)
