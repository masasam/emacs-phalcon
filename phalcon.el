;;; phalcon.el --- Phalcon Framework util -*- lexical-binding: t; -*-

;; Copyright (C) 2017 by Masashı Mıyaura

;; Author: Masashı Mıyaura
;; URL: https://github.com/masasam/emacs-phalcon
;; Version: 0.3.1
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

;; Phalcon Framework util.

;;; Code:

(defgroup phalcon nil
  "Phalcon Framework util."
  :group 'tools)

(defcustom phalcon-basedir nil
  "Directory where Phalcon Framework is placed."
  :group 'phalcon
  :type 'string)

(defun phalcon-currentfilename ()
  "Get current file name."
  (if (string-match "Criteria" (file-name-nondirectory (buffer-file-name)))
      (replace-match "" t t (file-name-nondirectory (buffer-file-name)))
    (file-name-nondirectory (buffer-file-name))))

(defun phalcon-currentfile-corename ()
  "Get current file core name."
  (file-name-nondirectory
   (file-name-sans-extension (buffer-file-name))))

;;;###autoload
(defun phalcon-entity ()
  "Open phalcon entities file same as current file."
  (interactive)
  (find-file (expand-file-name (phalcon-currentfilename) (concat phalcon-basedir "app/models/entities/"))))

;;;###autoload
(defun phalcon-entity-directory ()
  "Open phalcon entities directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/models/entities/"))))

;;;###autoload
(defun phalcon-repository ()
  "Open phalcon repository file same as current file."
  (interactive)
  (find-file (expand-file-name (phalcon-currentfilename) (concat phalcon-basedir "app/models/repositories/Repository/"))))

;;;###autoload
(defun phalcon-service ()
  "Open phalcon service file same as current file.."
  (interactive)
  (find-file (expand-file-name (phalcon-currentfilename) (concat phalcon-basedir "app/models/services/Service/"))))

;;;###autoload
(defun phalcon-criteria ()
  "Open phalcon criterias directory."
  (interactive)
  (find-file (expand-file-name (concat (phalcon-currentfile-corename) "Criteria.php") (concat phalcon-basedir "app/models/criterias"))))

;;;###autoload
(defun phalcon-toml ()
  "Open phalcon toml file."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/messages/ja.toml"))))

;;;###autoload
(defun phalcon-admin-toml ()
  "Open phalcon admin toml file."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/messages/admin.ja.toml"))))

;;;###autoload
(defun phalcon-service-directory ()
  "Open phalcon service directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/models/services/Service"))))

;;;###autoload
(defun phalcon-app ()
  "Open phalcon app directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app"))))

;;;###autoload
(defun phalcon-config ()
  "Open phalcon config directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/config"))))

;;;###autoload
(defun phalcon-controller ()
  "Open phalcon controller directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/modules/frontend/controllers"))))

;;;###autoload
(defun phalcon-volt ()
  "Open phalcon volt directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/modules/frontend/views"))))

;;;###autoload
(defun phalcon-form ()
  "Open phalcon form directory."
  (interactive)
  (switch-to-buffer (find-file-noselect (concat phalcon-basedir "app/utils/Forms"))))

(provide 'phalcon)

;;; phalcon.el ends here
