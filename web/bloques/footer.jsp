<%-- 
    Document   : footer
    Created on : 02-mar-2015, 11:58:48
    Author     : Juan Antonio Seco Merchán
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle  var="bundle" basename="bundles.app"/>
<footer>
    <div class="col-md-12 col-sm-12 col-xs-12 footer">
        <div class="container">
            <div class="col-md-8 col-sm-8 col-xs-12">
                <a href="https://github.com/jsm94/jspChat"><i class="fa fa-github"></i></a><span><fmt:message key="realizadoPor" bundle="${bundle}"/> <a href="https://github.com/jsm94">Juan Antonio Seco Merchán</a></span>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <a href="http://www.w3.org/html/logo/">
                    <img src="http://www.w3.org/html/logo/badge/html5-badge-h-css3.png" width="66" height="32" alt="HTML5 Powered with CSS3 / Styling" title="HTML5 Powered with CSS3 / Styling" longdesc="http://www.w3.org/html/logo/#the-logo-description">
                </a>
                <a href="http://www.w3.org/WAI/WCAG2A-Conformance"
                   title="Explanation of WCAG 2.0 Level A Conformance">
                    <img height="32" width="88" 
                         src="http://www.w3.org/WAI/wcag2A-blue-v.svg"
                         alt="Level A conformance, 
                         W3C WAI Web Content Accessibility Guidelines 2.0"></a>
            </div>
        </div>
    </div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
