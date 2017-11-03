(require "./game.lisp")

;;;;;;;;;;; Console UI functions

;displays the current player in console
(defun show-current-player (player)
    (format t "~%~%~aNa potezu je: IGRAC ~a" #\tab (1+ player)))

;displays the number of X figures
(defun show-number-of-x-figures (table)
    (format t "~%~aBroj X figurica je: ~a" #\tab (number-of-x table)))

;displays the number of O figures
(defun show-number-of-o-figures (table)
    (format t "~%~aBroj O figurica je: ~a" #\tab (number-of-o table)))

(defun show-move-examle ()
    (format t "~aPrimer kako treba uneti potez: b 2 d 2 " #\tab))

;displays input message
(defun show-user-input ()
    (format t "~%~%~aUnesi potez: " #\tab))

;displays initial game message
(defun show-initial-message ()
    (format t "~%~aKo igra prvi, 0-igrac igra pvi, 1-igrac igra drugi: " #\tab))

;displays message when loading a game
(defun loading-message ()
    (ext:run-shell-command "cls")
    (format t "~%~aUnesi dimenzije table: " #\tab))

;displays the table with column number indicators and row letter indicators
(defun show-table (table nums)
    (format t "~%~a    " #\tab)
    (print-numbers nums)
    (format t "~%~%")
    (show-table-rec table nums)
    (format t "~%"))

;displays the entire console UI
(defun show-ui (table nums player)
    (ext:run-shell-command "cls")
    (show-table table nums)
    (show-move-examle)
    (show-number-of-x-figures table)
    (show-number-of-o-figures table)
    (show-current-player player)
    (show-user-input))