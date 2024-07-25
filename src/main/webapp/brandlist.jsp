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
        <h2>BrandList</h2>
    </hr>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">BrandName</th>
                <th scope="col">Option</th>
            </tr>
            </thead>
            <tbody>

            <%
                Connection con = DB.getConnection();

                String sql = "select * from brand";

                PreparedStatement preparedStatement = con.prepareStatement(sql);

                ResultSet resultSet = preparedStatement.executeQuery();
                while(resultSet.next())
                {

            %>

            <tr>
                <th><%=resultSet.getInt("id")%></th>
                <td><%=resultSet.getString("name")%></td>
                <td>
                    <a href="show.jsp?id=<%=resultSet.getInt("id")%>" class="btn btn-success">Show</a>
                    <a href="edit.jsp?id=<%=resultSet.getInt("id")%>" class="btn btn-warning">Edit</a>
                    <a href="delete.jsp?id=<%=resultSet.getInt("id")%>" class="btn btn-danger">Delete</a>

                </td>

            </tr>
                <% } %>
            </tbody>
        </table>



    </div>

</div>

</body>
</html>
