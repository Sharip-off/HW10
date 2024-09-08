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
    <h1>UPDATE <c:out value="${user.login}"/> </h1>
    <form action="/updateByAdmin" method="POST">
        <!-- Immutable-->
        User name <br/><input type="text" name="login" value="${user.login}" /><br/>
        User role <br/><input type="text" name="role" value="${user.role}" /><br/>
        <!-- Mutable-->
        E-mail:<br/><input type="text" name="email" value="${user.email}" /><br/>
        Phone:<br/><input type="text" name="phone" value="${user.phone}" /><br/>
        Address:<br/><input type="text" name="address" value="${user.address}" /><br/>
        <input type="submit" value="Update" />
    </form>
</div>


</body>
</html>
