<%--
  Created by IntelliJ IDEA.
  User: NCP
  Date: 6/23/2022
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

        <div class="col-md-9 col-xl-8 ml-auto mr-auto">
            <form>
                <div class="align-items-center form-row">
                    <div class="form-group col-sm"><input type="text" class="form-control form-control pl-4 pr-4 rounded-pill" name="search" placeholder="Tìm kiếm..." /></div>
                    <div class="form-group col-sm-auto text-right"><button class="btn btn-primary pl-4 pr-4 rounded-pill" type="submit"><i class="fa fa-search"></i></button></div>
                </div>
            </form>
        </div>

        <div class="filters-content">
            <div class="row grid">
                <div class="col-sm-6 col-lg-4 all pizza">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f1.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Delicious Pizza
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $20
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 all burger">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f2.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Delicious Burger
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $15
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 all pizza">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f3.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Delicious Pizza
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $17
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 all pasta">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f4.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Delicious Pasta
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $18
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 all fries">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f5.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    French Fries
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $10
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 all pizza">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f6.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Delicious Pizza
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $15
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 all burger">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f7.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Tasty Burger
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $12
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 all burger">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f8.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Tasty Burger
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $14
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 all pasta">
                    <div class="box">
                        <div>
                            <div class="img-box">
                                <img src="assets/images/f9.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Delicious Pasta
                                </h5>
                                <p>
                                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                </p>
                                <div class="options">
                                    <h6>
                                        $10
                                    </h6>
                                    <a href="" class="add_to_cart">
                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-box">
            <a href="">
                Xem thêm
            </a>
        </div>
    </div>
</section>