// ==UserScript==
// @name          Show Password onMouseOver
// @include       *
// @description   Show password when mouseover on password field
// @license       free
// @version       1.0
// ==/UserScript==

(function () {
  'use strict';

  function showPasswordOnHover(field) {
    field.type = "text";
  }

  function hidePasswordOnLeave(field) {
    field.type = "password";
  }

  function attachEventListeners(passwordFields) {
    passwordFields.forEach(function (field) {
      field.addEventListener("mouseover", showPasswordOnHover.bind(null, field), false);
      field.addEventListener("mouseout", hidePasswordOnLeave.bind(null, field), false);
    });
  }

  function init() {
    var passwordFields = document.querySelectorAll("input[type='password']");
    if (!passwordFields.length) return;
    attachEventListeners(passwordFields);
  }

  // Wait for the DOM to be fully loaded before executing the script
  document.addEventListener("DOMContentLoaded", init);
})();
