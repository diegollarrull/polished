"use strict";

var verify_email_module = function verify_email_module(ns_prefix) {
  $(function () {
    var auth = firebase.auth();
    $(document).on("click", "#resend_verification_email", function () {
      var user = auth.currentUser;
      user.sendEmailVerification().then(function () {
        toastr.success("Verification email sent to " + user.email, null, toast_options);
      })["catch"](function (error) {
        toastr.error("Error: " + error.message, null, toast_options);
        console.error("Error sending email verification", error);
      });
    });

    var check_email_verification = function check_email_verification() {
      // if the current Firebase user was somehow signed out, then sign the user
      // out from Shiny
      if (auth.currentUser === null) {
        Shiny.setInputValue("".concat(ns_prefix, "sign_out"), 1, {
          event: "priority"
        });
        return;
      }

      auth.currentUser.reload().then(function () {
        if (auth.currentUser.emailVerified) {
          auth.currentUser.getIdToken(true).then(function (firebase_token) {
            Shiny.setInputValue("".concat(ns_prefix, "refresh_email_verification"), firebase_token, {
              event: "priority"
            });
          });
          clearInterval(check_email_verification_interval);
        }
      });
    };

    var check_email_verification_interval = setInterval(check_email_verification, 1000);
  });
};