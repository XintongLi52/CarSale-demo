<%@ page import="java.sql.Connection" %>
<%@ page import="com.liz.carsales.db.DB" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
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
        <form action="modeladd" method="post">
            <div class="form-group">
                <label for="exampleInputName">Brand</label>
                <select name="brand_id" class="form-control">
                    <%
                        Connection con = DB.getConnection();

                        String sql = "select * from brand";

                        PreparedStatement preparedStatement = con.prepareStatement(sql);

                        ResultSet resultSet = preparedStatement.executeQuery();
                        while(resultSet.next())
                        {

                    %>
                    <option value="<%=resultSet.getString("id")%>"><%=resultSet.getString("name")%></option>

                    <% } %>

                </select>
            </div>

            <div class="form-group">
                <label for="exampleInputName">Model Name</label>
                <input type="text" class="form-control" name="name" id="exampleInputName" placeholder="Enter model name">
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>


    </div>

</div>

</body>
</html>
