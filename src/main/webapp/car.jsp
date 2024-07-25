<%@ page import="com.liz.carsales.db.DB" %>
<%@ page import="java.sql.Connection" %>
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
        <form action="caradd" method="post">
            <div class="form-group">
                <label>Brand</label>
                <input type="text" class="form-control" name="title" placeholder="Enter brand name">
            </div>

            <div class="form-group">
                <label>Description</label>
                <input type="text" class="form-control" name="description" placeholder="Enter description">
            </div>

            <div class="form-group">
                <label>Year</label>
                <input type="text" class="form-control" name="year" placeholder="Enter year">
            </div>

            <div class="form-group">
                <label>Price</label>
                <input type="text" class="form-control" name="price" placeholder="Enter price">
            </div>

            <div class="form-group">
                <label>Member</label>

                <select name="member_id" class="form-control">
                    <%
                        Connection con1 = DB.getConnection();

                        String sql1 = "select * from member";

                        PreparedStatement preparedStatement1 = con1.prepareStatement(sql1);

                        ResultSet resultSet1 = preparedStatement1.executeQuery();
                        while(resultSet1.next())
                        {

                    %>
                    <option value="<%=resultSet1.getString("id")%>"><%=resultSet1.getString("name")%></option>

                    <% } %>

                </select>
            </div>

            <div class="form-group">
                <label>Model</label>

                <select name="model_id" class="form-control">
                    <%
                        Connection con = DB.getConnection();

                        String sql = "select * from model";

                        PreparedStatement preparedStatement = con.prepareStatement(sql);

                        ResultSet resultSet = preparedStatement.executeQuery();
                        while(resultSet.next())
                        {

                    %>
                    <option value="<%=resultSet.getString("id")%>"><%=resultSet.getString("name")%></option>

                    <% } %>

                </select>
            </div>

            <button type="submit" class="btn btn-primary">Save</button>
        </form>


    </div>

</div>

</body>
</html>
