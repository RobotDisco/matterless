(require 'f)

(defvar matterless-support-path
  (f-dirname load-file-name))

(defvar matterless-features-path
  (f-parent matterless-support-path))

(defvar matterless-root-path
  (f-parent matterless-features-path))

(add-to-list 'load-path matterless-root-path)

;; Ensure that we don't load old byte-compiled versions
(let ((load-prefer-newer t))
  (require 'matterless)
  (require 'espuds)
  (require 'ert))

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
