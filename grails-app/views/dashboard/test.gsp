<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Welcome TO Grails'S TODO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>



<g:javascript>
            var url = "${createLink(controller:'Task',action:'updateTaskstatus')}"
            var urll = "${createLink(controller:'Task',action:'updateTaskrecord')}"
</g:javascript>

<body>
<div class="container">
    <div class="panel panel-default" style="background: #31b0d5">
        <div class="panel-body" style="color:#6200EE">
            <div class ="container">
                <div class="col-md-12" style="color:#6200EE">
                    <h4 class="col-md-10"style="align:center"><strong>Welcome to TODO</strong></h4>

                <div class=" col-md-2 dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select
<span class="caret" onclick="show()"></span></button>
    <ul class="dropdown-menu" id="drop">
        <li><a href="/Signup/logout">Logout</a></li>
    </ul>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="conatiner">
    <div class="row">
        <g:form name="myForm" url="[controller:'task',action:'createTask']">
        <div class="col-md-5" style="margin-left:240px">
            <div class="form-group">
                <input type="text"  class="form-control" required  placeholder="Add your Task"  name="task">
            </div>
        </div>
            <div class="col-md-2">
                <div class="input-group">
                    <div class="input-group-addon" id="calendar1">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" name="start_date" id="start_date" placeholder="choose date" class="form-control start_date" data-inputmask="'alias':'mm/dd/yyyy'" data-mask="" value="">
                </div>
            </div>



            <button type="submitButton"  class="col-md-1 btn btn-info">ADD Task</button>
    </g:form>
    </div>
</div>


<div class="container">
    <div class="row"  style="margin-left: 200px;">
        <div class="col-md-12">
            <g:each in="${userTask}"  var="task" status="i">
                <div class="col-md-8">
                    <g:if test="${task.isDone}">
                            <b id="${task.id}" style="text-decoration:line-through" style="text-decoration-color: red">
                        ${i+1}.${task.taskName}
                            </b>
                        <span style="float: right">   ${task.timeFinished} </span>
                        </g:if>
                        <g:else>
                    <b id="${task.id}">
                            ${i+1}.${task.taskName }
                    </b>
                            <span style="float: right">   ${task.timeFinished} </span>
                        </g:else>
                    <g:link class="glyphicon glyphicon-trash" controller="dashboard" action="deleteTask"  params="[id:task.id]" style="float:right"></g:link>
                </div>

            </g:each>
        </div>



        </div>
    </div>



<script>
    $(document).ready(function() {
        $('#calendar1').click(function(event) {
            $('.start_date').datepicker('show');
        });
    });
</script>


<script>
    $(document).ready(function(){
        $("b").click(function(){
            $(this).css("text-decoration", "line-through");
            $(this).css("text-decoration-color", "red");
            var t1 = $(this).attr('id');



            $.ajax({
                "url":url,
                "type": "get",
                "data":{t1:t1}

            });
        });
    });
    $(document).ready(function(){
        $("b").dblclick(function(){
            $(this).css("text-decoration", "none");


            var t2 = $(this).attr('id');

            $.ajax({
                "url":urll,
                "type": "get",
                "data":{t2:t2}

            });

        });
    });

</script>


</body>
</html>
