<html>
<head>
    <title>Welcome TO Grails'S TODO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<style>
.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color:  #FFFFFFF;
    color: white;
    text-align: center;
}



</style>
<div class="container">
    <div class="panel panel-default"style="background: #31b0d5">
    <div class="panel-body">
        <div class ="container">
            <div class="col-md-12">
                <h4><strong>Welcome to TODO</strong></h4>
            </div>
        </div>
    </div>
</div>
</div>


<div class="container">
    <div class=col-md-6>
        <div class="panel panel-default">
            <div class="panel-heading">
            <h4>Login</h4>
        </div>
        <div class="panel-body">
            <g:form controller="signup" action="login">
                <div class="form-group">

                    <label for="email">Email: </label>

                    <input type="email" class="form-control" required placeholder="Enter Email" id="email" name="email">

                </div>
                <div class="form-group">
                    <label for="pwd">Password </label>
                    <input type="password" class="form-control" required  placeholder="Enter password" id="pwd" name="password">
                </div>
                <div class="form-group form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="remember"> Remember me
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </g:form>
        </div>
    </div>
</div>
<div class="col-md-6">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4>Signup</h4>
        </div>
        <div class="panel-body">
            <g:form controller="signup" action="register">
                <div class="form-group">
                    <label for="Firstname :">Firstname:</label>
                    <input type="text" class="form-control" required placeholder="Enter Firstname" id="Username" name="firstName">
                </div>

                <div class="form-group">
                    <label for="Lastname :">Lastname:</label>
                    <input type="text" class="form-control" required placeholder="Enter Lastname" id="Username" name="lastName">
                </div>

                <div class="form-group">
                    <label for="email :">Email:</label>
                    <input type="email" class="form-control" required placeholder="Enter Email" id="Username" name="useremail">
                </div>

                <div class="form-group">
                    <label for="Username :">Username:</label>
                    <input type="text" class="form-control" required placeholder="Enter Username" id="Username" name="username">
                </div>

                <div class="form-group">
                    <label for="Password :">Password:</label>
                    <input type="text" class="form-control" required placeholder="Password" id="Username" name="password">
                </div>

                <div class="form-group">
                    <label for="ConfirmPassword :">ConfirmPassword:</label>
                    <input type="password" class="form-control" required placeholder="ConfirmPassword" id="Username" name="confirmpassword">
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>



            </g:form>
        </div>
        <p>${flash.message}</p>
    </div>
</div>
</div>



<div class="footer">
    <p><a href="https://www.facebook.com">SHALIN &#169;</a></p>
</div>

</div>

</body>
</html>
