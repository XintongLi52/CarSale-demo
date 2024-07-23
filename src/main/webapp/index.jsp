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
        <div class="well well-lg form-inline" align="right">
            <input type="text" class="form-control"> &nbsp;
            <button class="btn btn-info">SEARCH</button>
        </div>
        <div class="col-md-9">
        </div>

        <div class="card" style="width: 18rem;">
            <img src="images/img.jpg" width="350px" height="250px">
            <div class="card-body">
                <h5 class="card-title">Toyota Car</h5>
                <p class="card-text">26000 km</p>
                <p class="card-text">Channai</p>
                <p class="card-text">500000</p>
                <a href="#" class="btn btn-primary">Go View</a>
            </div>
        </div>

    </div>

</div>

</body>
</html>
