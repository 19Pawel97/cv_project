<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf"%>
<%@include file="../dynamic/header_nav.jspf"%>

<body>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center">
    <div class="container" data-aos="zoom-in" data-aos-delay="100">
      <h1>Paweł Żurawski</h1>
      <p>I'm <span class="typed" data-typed-items="a developer, an economist, a teacher"></span></p>
    </div>
  </section><!-- End Hero -->

</body>

<%@include file="../dynamic/footer.jspf"%>
<%@include file="../dynamic/js.jspf"%>

</html>