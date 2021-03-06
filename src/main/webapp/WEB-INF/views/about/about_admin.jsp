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
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <img src="resources/img/IMGP0027zzMini.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-8 pt-4 pt-lg-0 content">
                    <h3>UI/UX Designer &amp; Web Developer.</h3>
                    <p class="fst-italic">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua.
                    </p>
                    <form method="get" action='<c:url value="/about_edit"/>'>
                    <c:forEach items="${about}" var="title">
                    <div class="row">
                        <div class="col-lg-6">
                            <ul>
                                <li><i class="bi bi-chevron-right"></i> <strong>Birthday:</strong><span>${title.birthday}</span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Website:</strong><span>${title.website}</span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Phone:</strong><span>${title.phone}</span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>City:</strong><span>${title.city}</span></li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul>
                                <li><i class="bi bi-chevron-right"></i> <strong>Age:</strong><span>${title.age}</span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Degree:</strong><span>${title.degree}</span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Email:</strong><span>${title.email}</span></li>
                                <li><i class="bi bi-chevron-right"></i> <strong>Freelance:</strong><span>${title.freelance}</span></li>
                            </ul>
                        </div>
                    </div>
                    </c:forEach>
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