<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../../dynamic/css.jspf"%>
<%@include file="../../dynamic/header_nav.jspf"%>

<body>

<main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>About</h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <img src="resources/img/profile-img.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-8 pt-4 pt-lg-0 content">
                    <h3>UI/UX Designer &amp; Web Developer.</h3>
                    <p class="fst-italic">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua.
                    </p>
                    <form method="get" action='<c:url value="/about_edit"/>'>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul>
                                <li><i class="bi bi-chevron-right"></i> <strong>Birthday:</strong>01.01.2000<span></span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Website:</strong>www.example.pl<span></span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Phone:</strong>123456789<span></span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>City:</strong>NYC<span></span></li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul>
                                <li><i class="bi bi-chevron-right"></i> <strong>Age:</strong>22<span></span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Degree:</strong>MA<span></span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Email:</strong>example.email@gmail.com<span></span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Freelance:</strong>available<span></span></li>
                            </ul>
                        </div>
                    </div>
                    <p>
                        Officiis eligendi itaque labore et dolorum mollitia officiis optio vero. Quisquam sunt adipisci omnis et ut. Nulla accusantium dolor incidunt officia tempore. Et eius omnis.
                        Cupiditate ut dicta maxime officiis quidem quia. Sed et consectetur qui quia repellendus itaque neque. Aliquid amet quidem ut quaerat cupiditate. Ab et eum qui repellendus omnis culpa magni laudantium dolores.
                    </p>
                    <div id="container">
                        <input class="btn btn-secondary" type="submit" value="Edit">
                    </div>
                    </form>
                </div>
            </div>

        </div>
    </section><!-- End About Section -->
</body>

<%@include file="../../dynamic/footer.jspf"%>
<%@include file="../../dynamic/js.jspf"%>

</html>