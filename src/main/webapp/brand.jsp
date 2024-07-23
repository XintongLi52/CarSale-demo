<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <%@include file="WEB-INF/jspf/header.jsp"%>
    </div>

<div class="row">
    <div class="col-md-3">
        <%@include file="WEB-INF/jspf/slidebar.jsp"%>
    </div>

    <div class="col-md-9">
        <h2>Registration</h2>
    </hr>
        <form action="brandadd" method="post">
            <div class="form-group">
                <label for="exampleInputName">Brand Name</label>
                <input type="text" class="form-control" name="name" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter a brand name">
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>


    </div>

</div>

</body>
</html>