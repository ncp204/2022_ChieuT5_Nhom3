<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.search.bean.DishDetails" %>
<%@ page import="com.example.search.service.DishDetailsService" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: NCP
  Date: 6/23/2022
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<section class="food_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2>
                Thực đơn của chúng tôi
            </h2>
        </div>

        <ul class="filters_menu">
            <li class="active" data-filter="*">Tất cả</li>
            <li data-filter=".burger">Hambuger</li>
            <li data-filter=".pizza">Pizza</li>
            <li data-filter=".pasta">Pasta</li>
            <li data-filter=".fries">Khoai tây chiên</li>
        </ul>

        <form action="menu" method="post">
            <div class="col-md-9 col-xl-8 ml-auto mr-auto">
                <form>
                    <div class="align-items-center form-row">
                        <div class="form-group col-sm keyword"><input type="text"
                                                                      class="form-control form-control pl-4 pr-4 rounded-pill"
                                                                      name="search"
                                                                      placeholder="Tìm kiếm..."
                                                                      value="${requestScope.valueInput}"/>
                        </div>
                        <div class="form-group col-sm-auto text-right">
                            <button class="btn btn-primary pl-4 pr-4 rounded-pill seatchItem" type="submit"><i
                                    class="fa fa-search"></i></button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="filters-content">
                <div class="row grid">
                    <%
                        String error = (String) session.getAttribute("error");
                    %>

                    <% if (error == null) { %>
                    <jsp:useBean id="dishs" scope="request" type="java.util.List<com.example.search.bean.DishDetails>"/>
                    <c:forEach var="dish" items="${dishs}">
                        <div class="col-sm-6 col-lg-4 all ${dish.getClassify()}">
                            <div class="box">
                                <div>
                                    <div class="img-box">
                                        <img src=
                                                 <c:url value="${dish.getImageUrl()}"/> alt="">
                                    </div>
                                    <div class="detail-box">
                                        <h5>
                                                ${dish.getName()}
                                        </h5>
                                        <p>
                                                ${dish.getIntroduce()}
                                        </p>
                                        <div class="options">
                                            <h6>
                                                    ${dish.getPrice()}
                                            </h6>
                                            <a href="" class="add_to_cart">
                                                <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <% } else {%>
                    <h2 style="margin: auto;"><%=error%></h2>
                    <% }; %>
                </div>
            </div>
        </form>
        <div class="btn-box">
            <a href="">
                Xem thêm
            </a>
        </div>
    </div>
</section>