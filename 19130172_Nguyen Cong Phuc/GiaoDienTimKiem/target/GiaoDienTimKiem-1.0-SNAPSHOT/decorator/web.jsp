<%--
  Created by IntelliJ IDEA.
  User: NCP
  Date: 6/23/2022
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/components/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String error = (String) request.getAttribute("error");%>
<!DOCTYPE html>
<html class="no-js" lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>${pageName}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon -->
    <link rel="shortcut icon" type="image/x-icon" href='<c:url value= "../assets/images/favicon.png"/>'/>
    <!-- include css -->
    <jsp:include page="../components/css.jsp"/>
</head>
<body>
<!-- header section start -->
<jsp:include page="/components/header.jsp"/>
<!-- header section end -->
<!-- content start end -->
<jsp:include page="${page}"/>
<!-- content end end -->
<!-- footer section start -->
<jsp:include page="/components/footer.jsp"/>
<!-- footer section end -->
<!-- include js -->
<jsp:include page="../components/js.jsp"/>
</body>
</html>