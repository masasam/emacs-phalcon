;;; phalcon.el --- Phalcon Framework util -*- lexical-binding: t; -*-

;; Copyright (C) 2017 by Masashı Mıyaura

;; Author: Masashı Mıyaura
;; URL: https://github.com/masasam/emacs-phalcon
;; Version: 0.1
;; Package-Requires: ((emacs "24.4"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Emacs major mode for writing blogs made with hugo
;; by markdown or org-mode or AsciiDoc or reStructuredText or mmark or html.
;; You can publish your blog to the server or Github Pages
;; or Amazon S3 or Google Cloud Storage.

;;; Code:

(defgroup phalcon nil
  "Phalcon Framework util."
  :group 'tools)

(defcustom phalcon-basedir nil
  "Directory where Phalcon Framework is placed."
  :group 'phalcon
  :type 'string)

(defun phalcon-app ()
  "Open phalcon app directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app"))))

(defun phalcon-config ()
  "Open phalcon config directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/config"))))

(defun phalcon-model ()
  "Open phalcon model directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/models"))))

(defun phalcon-criterias ()
  "Open phalcon criterias directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/models/criterias"))))

(defun phalcon-entities ()
  "Open phalcon entities directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/models/entities"))))

(defun phalcon-repository ()
  "Open phalcon repository directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/models/repositories/Repository"))))

(defun phalcon-service ()
  "Open phalcon service directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/models/services/Service"))))

(defun phalcon-frontend ()
  "Open phalcon frontend directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/modules/frontend"))))

(defun phalcon-backend ()
  "Open phalcon backend directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/modules/backend"))))

(defun phalcon-controller ()
  "Open phalcon controller directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/modules/frontend/controllers"))))

(defun phalcon-admin-controller ()
  "Open phalcon admin controller directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/modules/frontend/controllers/Admin"))))

(defun phalcon-view ()
  "Open phalcon view directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/modules/frontend/views"))))

(defun phalcon-form ()
  "Open phalcon form directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/utils/Forms"))))

(defun phalcon-util ()
  "Open phalcon util directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/utils"))))

(defun phalcon-public ()
  "Open phalcon public directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "phalcon/public"))))

(defun phalcon-locale ()
  "Open phalcon public directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/messages"))))

(defun phalcon-toml ()
  "Open phalcon toml file."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/messages/ja.toml"))))

(defun phalcon-admin-toml ()
  "Open phalcon admin toml file."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/messages/admin.ja.toml"))))

(provide 'phalcon)

;;; phalcon.el ends here
