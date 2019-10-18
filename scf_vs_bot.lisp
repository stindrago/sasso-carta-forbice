(defvar UNI)
(defvar CAMBOT)
(defvar PUNTI 0)

(loop
 (setq CAMBOT (nth (random (length '(S C F))) '(S C F)))
 (format t  "~%~%PUNTI: ~D~%Scegli (S)asso (C)arta (F)orbice" PUNTI)
 (format t "~%Turno di UNI: ") (finish-output nil) (setq UNI (read))
 (format t "Turno di CAMBOT: ~A " CAMBOT)

 (unless (equal UNI CAMBOT)
   (if (or
	(and (equal UNI 'S) (equal CAMBOT 'F))
	(and (equal UNI 'C) (equal CAMBOT 'S))
	(and (equal UNI 'F) (equal CAMBOT 'C)))
       (setq PUNTI (+ PUNTI 1))
     (setq PUNTI (- PUNTI 1))))
 
 (when (equal PUNTI 3) (format t "~%UNI ha vinto!") (return))
 (when (equal PUNTI -3) (format t "~%CAMBOT ha vinto!") (return)))
