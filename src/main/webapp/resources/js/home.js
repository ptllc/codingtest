function login()
{
}
$(function() {
	$("#signupBtn").click(function(e){
	    e.preventDefault();
	    window.location=contextProject+"/signup1";
	  });
	jQuery.validator.addMethod("alphanumeric", function(value, element) {
	    return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	});
	$("#loginStep1Form").validate({
	    // Specify validation rules
	    rules: {
	      // The key name on the left side is the name attribute
	      // of an input field. Validation rules are defined
	      // on the right side
	      username: {
	    	  required: true,
	    	  minlength: 5,
	    	  maxlength: 12
	      }
	    },
	    // Specify validation error messages
	    messages: {
	      username: {
	    	  required: "Please enter a user name",
	    	  alphanumeric: "Please enter only letters and numbers"
	      }
	    },
	    // Make sure the form is submitted to the destination defined
	    // in the "action" attribute of the form when valid
	    submitHandler: function(form) {
	      form.submit();
	    }
	  });
	});