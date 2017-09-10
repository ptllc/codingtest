<%@ include file="/WEB-INF/views/common/resources.jsp"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Security Questions Form</title>
  <link rel="stylesheet" href="<c:url value="/resources/css/ext/jquery-ui.css" />">
  <link rel="stylesheet" href="<c:url value="/resources/css/ext/bootstrap.min.css" />">

  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

  <script src="<c:url value="/resources/js/ext/jquery-ui.js" />"></script>
  <script src="<c:url value="/resources/js/ext/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/js/ext/bootstrap.min.js" />"></script>

</head>
<body>
<div class="container">
<h2>Security Questions Form</h2>
<form action="saveSignup2" name="signup2Form" id="signup2Form" method="POST">
  <div class="form-group">
    <label for="question1">Question 1:</label>
<select class="form-control" id="question1" name="question1">
    <option value="">Select Question</option>
    <option value="placeOfBirth">Where were you born?</option>
    <option value="mothersMaidenName">What is your mother's maiden name?</option>
    <option value="bestFriendsName">What is your best friend's name?</option>
</select>
    <input type="text" id="answer1" class="form-control" name="answer1" placeholder="Answer security question" required>
  </div>
  <div class="form-group">
    <label for="question2">Question 2:</label>
<select class="form-control" id="question2" name="question2">
    <option value="">Select Question</option>
    <option value="placeOfBirth">Where were you born?</option>
    <option value="mothersMaidenName">What is your mother's maiden name?</option>
    <option value="bestFriendsName">What is your best friend's name?</option>
</select>
    <input type="text" id="answer2" class="form-control" name="answer2" placeholder="Answer security question" required>
  </div>
  <div class="form-group">
    <label for="question1">Question 3:</label>
<select class="form-control" id="question3" name="question3">
    <option value="">Select Question</option>
    <option value="placeOfBirth">Where were you born?</option>
    <option value="mothersMaidenName">What is your mother's maiden name?</option>
    <option value="bestFriendsName">What is your best friend's name?</option>
</select>
    <input type="text" id="answer3" class="form-control" name="answer3" placeholder="Answer security question" required>
  </div>
  <div class="form-group">
  <span id="errorDupQuestion"></span>
  </div>
  <button class="btn btn-default" id="signup2SubmitBtn">Submit</button>
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
