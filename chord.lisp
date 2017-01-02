(
    defun
    solve-line
    (ky)

    "Solves a simple liner equazion k*x + y = 0, returns x."

    (
        let
        (
            (k (car ky))
            (y (cadr ky))
        )
        (return-from solve-line (/ (- y) k))
    )
)

(
    defun
    2-points-to-line
    (p1 p2)

    "Caclulates a line equasion that goes throught 2 given pionts - p1 & p2: (x y)"

    (
        let*
        (
            (x1 (car p1))
            (y1 (cadr p1))
            (x2 (car p2))
            (y2 (cadr p2))
            (k (/ (- y1 y2) (- x1 x2)))
            (y (/ (- (* x1 y2) (* x2 y1)) (- x1 x2)))
        )    
        (return-from 2-points-to-line (list k y))
    )
)