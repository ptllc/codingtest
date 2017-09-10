$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "signup2"
jQuery.validator.addMethod("validDate", function (value, element) {
    return this.optional(element) || isDate(value) ;
});
jQuery.validator.addMethod("alphanumeric", function(value, element) {
    return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
});
$("#signup1Form").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side
      username: {
    	  required: true,
    	  minlength: 5,
    	  maxlength: 12
      },
      birthDate: {
    	  required: true,
    	  validDate: true
      }
    },
    // Specify validation error messages
    messages: {
      username: {
    	  required: "Please enter a user name",
    	  alphanumeric: "Please enter only letters and numbers"
      },
      birthDate: {
    	  required: "Please enter your birth date",
    	  validDate: "Please enter a valid date"
      }
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
//$("#signupBtn").click(function(e){
//    e.preventDefault();
//    window.location=contextProject+"/signup2";  });
});