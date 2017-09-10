function isDuplicateQuestion()
{
	var question1Val =  $('#question1').val();
    var question2Val =  $('#question2').val();
    var question3Val =  $('#question3').val();
    if(question1Val!="" && question2Val!="" && question3Val!="")
    {
	    if((question1Val==question2Val || question1Val==question3Val || question2Val==question3Val))
	    	return true;
	    else
	        return false;
    }
    else
    {
    	return true;
    }
 }
$(function() {
	  // Initialize form validation on the registration form.
	  // It has the name attribute "signup2"
	jQuery.validator.addMethod("alphanumeric", function(value, element) {
	    return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
	});
	/*jQuery.validator.addMethod("duplicateQuestion", function(value, element) {
	    return this.optional(element) || isDuplicateQuestion(val);
	}, "Duplicate Security Question. Please correct and click Submit.");*/
	$("#signup2Form").validate({
	    // Specify validation rules
	    rules: {
	      // The key name on the left side is the name attribute
	      // of an input field. Validation rules are defined
	      // on the right side
		      answer1: {
		    	  required: true,
		    	  alphanumeric: true
		      },
		      answer2: {
		    	  required: true,
		    	  alphanumeric: true
		      },
		      answer3: {
		    	  required: true,
		    	  alphanumeric: true
		      },
		      question1: {
		    	  required: true
		      },
		      question2: {
		    	  required: true
		      },
		      question3: {
		    	  required: true
		      }
	    },
	    /*groups: {
	        questions: "question1 question2 question3"
	    },
        errorPlacement: function(error, element) {
            if (element.attr("name") == "question1" 
                        || element.attr("name") == "question2"
                        || element.attr("name") == "question3" )
              error.insertAfter("#answer3");
            else
              error.insertAfter(element);
          },*/
	    // Specify validation error messages
	    messages: {
	      answer1: {
	    	  required: "Please enter an answer for question 1",
	    	  alphanumeric: "Please enter only letters and numbers"
	      },
	      answer2: {
	    	  required: "Please enter an answer for question 2",
	    	  alphanumeric: "Please enter only letters and numbers"
	      },
	      answer3: {
	    	  required: "Please enter an answer for question 3",
	    	  alphanumeric: "Please enter only letters and numbers"
	      },
	      question1: {
	    	  required: "Please select security question 1"
	      },
	      question2: {
	    	  required: "Please select security question 2"
	      },
	      question3: {
	    	  required: "Please select security question 3"
	      }
	    },
	    // Make sure the form is submitted to the destination defined
	    // in the "action" attribute of the form when valid
	    submitHandler: function(form) {
	      if (isDuplicateQuestion()){
	    	  $("#errorDupQuestion").html("Duplicate Security Question. Please correct and click Submit.");
	      } else {
		      form.submit();
	      }
	    }
	  });
	//$("#signupBtn").click(function(e){
//	    e.preventDefault();
//	    window.location=contextProject+"/signup2";  });
	});