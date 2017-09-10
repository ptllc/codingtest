<%@ include file="/WEB-INF/views/common/resources.jsp"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sign Up Form</title>
<!-- 
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
-->
  <link rel="stylesheet" href="<c:url value="/resources/css/ext/jquery-ui.css" />">
  <link rel="stylesheet" href="<c:url value="/resources/css/ext/bootstrap.min.css" />">
<!-- 
  <script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
-->
  <script src="<c:url value="/resources/js/ext/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/js/ext/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/ext/bootstrap-datepicker.min.js" />"></script>

  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</head>
<body>
<div class="container">
<h2>Sign Up Form</h2>
<form action="saveSignup1" name="signup1Form" id="signup1Form" method="POST">
  <div class="form-group">
    <label for="username">User Name:</label>
    <input type="text" class="form-control" id="username" name="username" placeholder="Enter User Name">
  </div>
  <div class="form-group">
    <label for="birthDate">Birth Date:</label>
    <input type="text" id="datepicker" class="form-control" name="birthDate" placeholder="mm/dd/yyyy">
    <span id="errorMsgBirthDate"></span>
  </div>
  <button class="btn btn-default" id="signup1NextBtn">Next</button>
</form> 
</div> 
<script src="<c:url value="/resources/js/ext/jquery.validate.min.js" />"></script>
<script src="<c:url value="/resources/js/signup1.js?nocache=13" />"></script>
<script src="<c:url value="/resources/js/date-util.js?nocache=11" />"></script>
</body>

</html>
