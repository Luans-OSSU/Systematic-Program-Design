;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname last-exercise) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)



;; Images -> Boolean
;; Produces true if the first image is larger than the second
 
(check-expect (larger? (rectangle 2 3 "solid" "red") (rectangle 4 3 "solid" "red")) false)
(check-expect (larger? (rectangle 3 3 "solid" "red") (rectangle 2 3 "solid" "red")) true)
(check-expect (larger? (rectangle 2 3 "solid" "red") (rectangle 2 3 "solid" "red")) false)

;(define (larger? img1 img2) true) ;stub

;(define (larger? img1 img2)
;  (if (< img1 img2)

(define (larger? img1 img2)
  (if (> (image-width img1) (image-width img2))
      true
      false))



