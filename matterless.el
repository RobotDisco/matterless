;;; matterless.el --- MatterMost client for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2019 Gaelan D'costa

;;; Author: Gaelan D'costa <gdcosta@gmail.com>
;;; Created: April 07, 2019
;;; Keywords: chat mattermost
;;; Homepage: https://github.com/RobotDisco/matterless

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; I have no idea how Emacs Lisp programs are written, let's find out!

;; No doubt I will be shamelessly inspired by the amazing slack client written
;; by Yuya Minami over at https://github.com/yuya373/emacs-slack/

;;; Code:

(require 'json)
(require 'request)

(defvar matterless-server-url
  "DEFINEME"
  "This is the mattermost server we will be talking to.")

(defvar matterless-api-prefix
  (concat matterless-server-url "/api/v4/"))

(defvar matterless-user
  "DEFINEME")

(defvar matterless-password
  "DEFINEME")

(defun matterless-request-login ()
  "Login to mattermost."
  (let ((req (request
              (concat matterless-api-prefix "users/login")
              :data (json-encode `(("login_id" . ,matterless-user)
                                  ("password" . ,matterless-password)))
              :parser 'json-read
              :sync t)))
    (request-response-data req)))

(provide 'matterless)
;;; matterless.el ends here
