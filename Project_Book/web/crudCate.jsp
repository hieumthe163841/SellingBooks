<%-- 
    Document   : crudCate
    Created on : Nov 4, 2022, 5:29:53 PM
    Author     : TrongHoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CSS/base.css">
        <link rel="stylesheet" href="CSS/main.css">
        <link rel="stylesheet" href="CSS/admin.css">
        <link rel="stylesheet" href="fontawesome-free-6.2.0-web/fontawesome-free-6.2.0-web/css/all.css">
        <script type="text/javascript">
            function deleteBook(categoryID) {
                if (confirm("Bạn có muốn xóa sản phẩm này?")) {
                    window.location = "deleteCate?categoryID=" + categoryID;
                }
            }
        </script>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="admin">
            <%@include file="nav-admin.jsp" %>
            <div class="table">
                <a style="color: var(--primary-color); font-size: 2rem; padding: 15px 0px;" href="addCate">Thêm Thể Loại</a>
                <c:if test="${requestScope.addSuccsess!=null}">
                    <p class="success">${addSuccsess}</p>
                </c:if>
                <c:if test="${requestScope.deleteSuccess!=null}">
                    <p class="success">${deleteSuccess}</p>
                </c:if>
                <table style="margin-top: 10px; border-collapse: collapse" border="1">
                    <thead style="font-size: 1.6rem">
                        <tr>
                            <th class="nxb">Thể loại sách</th>
                            <th class="nxb"></th>
                        </tr>
                    </thead>
                    <tbody >
                        <c:forEach items="${requestScope.list}" var="list">
                            <tr >
                                <td style="text-align: center;">${list.name}</td>
                                <td class="set-item">
                                    <a style="color: blue;"  href="updateCate?categoryID=${list.categoryID}">Cập nhật</a>
                                    <a style="color: red;" href="#" onclick="deleteBook('${list.categoryID}')"">Xóa</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
        <%@include file="click.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>


