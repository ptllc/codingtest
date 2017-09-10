<%@ include file="/WEB-INF/views/common/resources.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Coding Test</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value="/resources/css/ext/bootstrap.min.css" />">
  <script src="<c:url value="/resources/js/ext/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/js/ext/bootstrap.min.js" />"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>Coding Test</h1>
  <h2>with Javascript Form Validation</h2>
</div>
  
<div class="container">
  <div class="row">
    <div class="col text-center">
      <button class="btn btn-default" id="loginBtn" data-toggle="modal" data-target="#loginModal">Login</button>
      <button class="btn btn-default" id="signupBtn">Sign Up</button>
    </div>
  </div>
  <!-- Modal -->
  <div class="modal fade" id="loginModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
<form action="loginStep1" name="loginStep1Form" id="loginStep1Form" method="POST">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
		    <label for="username">User Name:</label>
		    <input type="text" class="form-control" id="loginUsername" name="loginUsername" placeholder="Enter User Name">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" id="loginNextBtn">Next</button>
        </div>
</form> 
      </div>
  <div class="modal fade" id="loginFailedModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login Failed</h4>
        </div>
        <div class="modal-body">
		    <span id="errorLoginFailed"></span>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
   </div>
  </div>
</div>
<script src="<c:url value="/resources/js/home.js?nocache=11" />"></script>
</body>
</html>

