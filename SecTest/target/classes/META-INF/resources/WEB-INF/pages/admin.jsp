<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Prog.kiev.ua</title>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"
            integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
            crossorigin="anonymous"></script>
</head>
<body>
<div align="center">
    <h1>Secret page for admins only!</h1>
    <p>Click to go back: <a href="/">back</a></p>

    <p>Click to logout: <a href="/logout">LOGOUT</a></p>

    <button type="button" id="add_user">Add</button>
    <button type="button" id="delete_user">Delete</button>
    <p>Click on the user to update data.</p>


    <table border="1">
        <c:forEach items="${users}" var="user">
            <tr>
                <td><input type="checkbox" name="toDelete" value="${user.id}" id="check_${user.id}"></td>
                <td style="min-width:50px"><a href="/admin_update-user?userLogin=${user.login}" ><c:out value="${user.login}"/></a></td>
                <td style="min-width:50px"><c:out value="${user.role}"/></td>
                <td style="min-width:50px"><c:out value="${user.email}"/></td>
                <td style="min-width:50px"><c:out value="${user.phone}"/></td>
                <td style="min-width:50px"><c:out value="${user.address}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>

<script>
    $('#add_user').click(function(){
        window.location.href = "/register";
    });

    $('#delete_user').click(function(){
        var data = { 'toDelete' : []};
        $(":checked").each(function() {
            data['toDelete'].push($(this).val());
        });
        $.post("/delete", data, function(data, status) {
            window.location.reload();
        });
    });
    //Updating user data from the admin panel

</script>

</body>
</html>
