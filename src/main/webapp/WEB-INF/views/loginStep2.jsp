<%@ include file="/WEB-INF/views/common/resources.jsp"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login Step 2</title>
  <link rel="stylesheet" href="<c:url value="/resources/css/ext/jquery-ui.css" />">
  <link rel="stylesheet" href="<c:url value="/resources/css/ext/bootstrap.min.css" />">

  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

  <script src="<c:url value="/resources/js/ext/jquery-ui.js" />"></script>
  <script src="<c:url value="/resources/js/ext/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/js/ext/bootstrap.min.js" />"></script>

</head>
<body>
<div class="container">
<h2>Login Step 2</h2>
<form action="loginStep2" name="loginStep2Form" id="loginStep2Form" method="POST">
  <div class="form-group">
    <label for="securityQuestion">Security Question:</label>
<select class="form-control" id="securityQuestion" name="securityQuestion">
    <option value="">Select Question</option>
    <option value="placeOfBirth">Where were you born?</option>
    <option value="mothersMaidenName">What is your mother's maiden name?</option>
    <option value="bestFriendsName">What is your best friend's name?</option>
</select>
    <input type="text" id="answer" class="form-control" name="answer" placeholder="Answer security question" required>
  </div>
  <div class="form-group">
  <span id="errorWrongAnswer"></span>
  </div>
  <button class="btn btn-default" id="loginStep2SubmitBtn">Submit</button>
</form> 
</div> 
<!-- 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
-->
<script src="<c:url value="/resources/js/ext/jquery.validate.min.js" />"></script>
<script src="<c:url value="/resources/js/ext/additional-methods.min.js" />"></script>
<script src="<c:url value="/resources/js/signup2.js?nocache=18" />"></script>

</body>

</html>
