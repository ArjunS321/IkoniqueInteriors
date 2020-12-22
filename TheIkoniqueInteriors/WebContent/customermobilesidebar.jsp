<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>

<!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Home</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Categories</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="#">Home</a>
                                </li>
                                <li>
                                    <a href="#">Hotel</a>
                                </li>
                                <li>
                                    <a href="#">Office</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-chart-bar"></i>Visualizer</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-table"></i>Wishlist</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="far fa-check-square"></i>My Orders</a>
                        </li>
                        <li>
                            <a href="calendar.jsp">
                                <i class="fas fa-calendar-alt"></i>Appoint Interior Designer</a>
                        </li>
                        <li>
                            <a href="map.jsp">
                                <i class="fas fa-map-marker-alt"></i>Enquiry</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-map-marker-alt"></i>About Us</a>
                        </li>
                        
                    </ul>
                </div>
            </nav>
        </header>
        
        		<%@include file="commonjs.jsp"%>