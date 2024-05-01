
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Medilab Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <style>/*--------------------------------------------------------------
# Blog Stylings
--------------------------------------------------------------*/
/*--------------------------------------------------------------
# Blog Home Posts List
--------------------------------------------------------------*/
.blog .posts-list article {
  box-shadow: 0 4px 16px rgba(var(--color-black-rgb), 0.1);
  padding: 30px;
  height: 100%;
}
.blog .posts-list article + article {
  margin-top: 60px;
}
.blog .posts-list .post-img {
  max-height: 240px;
  margin: -30px -30px 0 -30px;
  overflow: hidden;
}
.blog .posts-list .title {
  font-size: 24px;
  font-weight: 700;
  padding: 0;
  margin: 20px 0 0 0;
}
.blog .posts-list .title a {
  color: var(--color-secondary);
  transition: 0.3s;
}
.blog .posts-list .title a:hover {
  color: var(--color-primary);
}
.blog .posts-list .meta-top {
  margin-top: 20px;
  color: var(--color-gray);
}
.blog .posts-list .meta-top ul {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  align-items: center;
  padding: 0;
  margin: 0;
}
.blog .posts-list .meta-top ul li + li {
  padding-left: 20px;
}
.blog .posts-list .meta-top i {
  font-size: 16px;
  margin-right: 8px;
  line-height: 0;
  color: rgba(var(--color-primary-rgb), 0.8);
}
.blog .posts-list .meta-top a {
  color: var(--color-gray);
  font-size: 14px;
  display: inline-block;
  line-height: 1;
}
.blog .posts-list .content {
  margin-top: 20px;
}
.blog .posts-list .read-more a {
  display: inline-block;
  background: #00BFFF;
  color: var(--color-white);
  padding: 8px 30px;
  transition: 0.3s;
  font-size: 14px;
  border-radius: 4px;
}
.blog .posts-list .read-more a:hover {
  background: rgba(var(--color-primary-rgb), 0.8);
}

/*--------------------------------------------------------------
# Blog Details Page
--------------------------------------------------------------*/
.blog .blog-details {
  box-shadow: 0 4px 16px rgba(var(--color-black-rgb), 0.1);
  padding: 30px;
}
.blog .blog-details .post-img {
  margin: -30px -30px 20px -30px;
  overflow: hidden;
}
.blog .blog-details .title {
  font-size: 28px;
  font-weight: 700;
  padding: 0;
  margin: 20px 0 0 0;
  color: var(--color-secondary);
}
.blog .blog-details .content {
  margin-top: 20px;
}
.blog .blog-details .content h3 {
  font-size: 22px;
  margin-top: 30px;
  font-weight: bold;
}
.blog .blog-details .content blockquote {
  overflow: hidden;
  background-color: rgba(var(--color-secondary-rgb), 0.06);
  padding: 60px;
  position: relative;
  text-align: center;
  margin: 20px 0;
}
.blog .blog-details .content blockquote p {
  color: var(--color-default);
  line-height: 1.6;
  margin-bottom: 0;
  font-style: italic;
  font-weight: 500;
  font-size: 22px;
}
.blog .blog-details .content blockquote:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 3px;
  background-color: var(--color-secondary);
  margin-top: 20px;
  margin-bottom: 20px;
}
.blog .blog-details .meta-top {
  margin-top: 20px;
  color: var(--color-gray);
}
.blog .blog-details .meta-top ul {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  align-items: center;
  padding: 0;
  margin: 0;
}
.blog .blog-details .meta-top ul li + li {
  padding-left: 20px;
}
.blog .blog-details .meta-top i {
  font-size: 16px;
  margin-right: 8px;
  line-height: 0;
  color: rgba(var(--color-primary-rgb), 0.8);
}
.blog .blog-details .meta-top a {
  color: var(--color-gray);
  font-size: 14px;
  display: inline-block;
  line-height: 1;
}
.blog .blog-details .meta-bottom {
  padding-top: 10px;
  border-top: 1px solid rgba(var(--color-secondary-rgb), 0.15);
}
.blog .blog-details .meta-bottom i {
  color: var(--color-secondary-light);
  display: inline;
}
.blog .blog-details .meta-bottom a {
  color: rgba(var(--color-secondary-rgb), 0.8);
  transition: 0.3s;
}
.blog .blog-details .meta-bottom a:hover {
  color: var(--color-primary);
}
.blog .blog-details .meta-bottom .cats {
  list-style: none;
  display: inline;
  padding: 0 20px 0 0;
  font-size: 14px;
}
.blog .blog-details .meta-bottom .cats li {
  display: inline-block;
}
.blog .blog-details .meta-bottom .tags {
  list-style: none;
  display: inline;
  padding: 0;
  font-size: 14px;
}
.blog .blog-details .meta-bottom .tags li {
  display: inline-block;
}
.blog .blog-details .meta-bottom .tags li + li::before {
  padding-right: 6px;
  color: var(--color-default);
  content: ",";
}
.blog .blog-details .meta-bottom .share {
  font-size: 16px;
}
.blog .blog-details .meta-bottom .share i {
  padding-left: 5px;
}
.blog .post-author {
  padding: 20px;
  margin-top: 30px;
  box-shadow: 0 4px 16px rgba(var(--color-black-rgb), 0.1);
}
.blog .post-author img {
  max-width: 120px;
  margin-right: 20px;
}
.blog .post-author h4 {
  font-weight: 600;
  font-size: 22px;
  margin-bottom: 0px;
  padding: 0;
  color: var(--color-secondary);
}
.blog .post-author .social-links {
  margin: 0 10px 10px 0;
}
.blog .post-author .social-links a {
  color: rgba(var(--color-secondary-rgb), 0.5);
  margin-right: 5px;
}
.blog .post-author p {
  font-style: italic;
  color: rgba(var(--color-gray-rgb), 0.8);
  margin-bottom: 0;
}

/*--------------------------------------------------------------
# Blog Sidebar
--------------------------------------------------------------*/
.blog .sidebar {
  padding: 30px;
  box-shadow: 0 4px 16px rgba(var(--color-black-rgb), 0.1);
}
.blog .sidebar .sidebar-title {
  font-size: 20px;
  font-weight: 700;
  padding: 0;
  margin: 0;
  color: var(--color-secondary);
}
.blog .sidebar .sidebar-item + .sidebar-item {
  margin-top: 40px;
}
.blog .sidebar .search-form form {
  background: var(--color-white);
  border: 1px solid rgba(var(--color-secondary-rgb), 0.3);
  padding: 3px 10px;
  position: relative;
}
.blog .sidebar .search-form form input[type=text] {
  border: 0;
  padding: 4px;
  border-radius: 4px;
  width: calc(100% - 40px);
}
.blog .sidebar .search-form form input[type=text]:focus {
  outline: none;
}
.blog .sidebar .search-form form button {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  border: 0;
  background: none;
  font-size: 16px;
  padding: 0 15px;
  margin: -1px;
  background: var(--color-primary);
  color: var(--color-white);
  transition: 0.3s;
  border-radius: 0 4px 4px 0;
  line-height: 0;
}
.blog .sidebar .search-form form button i {
  line-height: 0;
}
.blog .sidebar .search-form form button:hover {
  background: rgba(var(--color-primary-rgb), 0.8);
}
.blog .sidebar .categories ul {
  list-style: none;
  padding: 0;
}
.blog .sidebar .categories ul li + li {
  padding-top: 10px;
}
.blog .sidebar .categories ul a {
  color: var(--color-secondary);
  transition: 0.3s;
}
.blog .sidebar .categories ul a:hover {
  color: var(--color-default);
}
.blog .sidebar .categories ul a span {
  padding-left: 5px;
  color: rgba(var(--color-default-rgb), 0.4);
  font-size: 14px;
}
.blog .sidebar .recent-posts .post-item {
  display: flex;
}
.blog .sidebar .recent-posts .post-item + .post-item {
  margin-top: 15px;
}
.blog .sidebar .recent-posts img {
  width: 80px;
  margin-right: 15px;
}
.blog .sidebar .recent-posts h4 {
  font-size: 18px;
  font-weight: 400;
}
.blog .sidebar .recent-posts h4 a {
  color: var(--color-secondary);
  transition: 0.3s;
}
.blog .sidebar .recent-posts h4 a:hover {
  color: var(--color-primary);
}
.blog .sidebar .recent-posts time {
  display: block;
  font-style: italic;
  font-size: 14px;
  color: rgba(var(--color-default-rgb), 0.4);
}
.blog .sidebar .tags {
  margin-bottom: -10px;
}
.blog .sidebar .tags ul {
  list-style: none;
  padding: 0;
}
.blog .sidebar .tags ul li {
  display: inline-block;
}
.blog .sidebar .tags ul a {
  color: var(--color-secondary-light);
  font-size: 14px;
  padding: 6px 14px;
  margin: 0 6px 8px 0;
  border: 1px solid rgba(var(--color-secondary-light-rgb), 0.8);
  display: inline-block;
  transition: 0.3s;
}
.blog .sidebar .tags ul a:hover {
  color: var(--color-white);
  border: 1px solid var(--color-primary);
  background: var(--color-primary);
}
.blog .sidebar .tags ul a span {
  padding-left: 5px;
  color: rgba(var(--color-secondary-light-rgb), 0.8);
  font-size: 14px;
}

/*--------------------------------------------------------------
# Blog Comments
--------------------------------------------------------------*/
.blog .comments {
  margin-top: 30px;
}
.blog .comments .comments-count {
  font-weight: bold;
}
.blog .comments .comment {
  margin-top: 30px;
  position: relative;
}
.blog .comments .comment .comment-img {
  margin-right: 14px;
}
.blog .comments .comment .comment-img img {
  width: 60px;
}
.blog .comments .comment h5 {
  font-size: 16px;
  margin-bottom: 2px;
}
.blog .comments .comment h5 a {
  font-weight: bold;
  color: var(--color-default);
  transition: 0.3s;
}
.blog .comments .comment h5 a:hover {
  color: var(--color-primary);
}
.blog .comments .comment h5 .reply {
  padding-left: 10px;
  color: var(--color-secondary);
}
.blog .comments .comment h5 .reply i {
  font-size: 20px;
}
.blog .comments .comment time {
  display: block;
  font-size: 14px;
  color: rgba(var(--color-secondary-rgb), 0.8);
  margin-bottom: 5px;
}
.blog .comments .comment.comment-reply {
  padding-left: 40px;
}
.blog .comments .reply-form {
  margin-top: 30px;
  padding: 30px;
  box-shadow: 0 4px 16px rgba(var(--color-black-rgb), 0.1);
}
.blog .comments .reply-form h4 {
  font-weight: bold;
  font-size: 22px;
}
.blog .comments .reply-form p {
  font-size: 14px;
}
.blog .comments .reply-form input {
  border-radius: 4px;
  padding: 10px 10px;
  font-size: 14px;
}
.blog .comments .reply-form input:focus {
  box-shadow: none;
  border-color: rgba(var(--color-primary-rgb), 0.8);
}
.blog .comments .reply-form textarea {
  border-radius: 4px;
  padding: 10px 10px;
  font-size: 14px;
}
.blog .comments .reply-form textarea:focus {
  box-shadow: none;
  border-color: rgba(var(--color-primary-rgb), 0.8);
}
.blog .comments .reply-form .form-group {
  margin-bottom: 25px;
}
.blog .comments .reply-form .btn-primary {
  border-radius: 4px;
  padding: 10px 20px;
  border: 0;
  background-color: var(--color-secondary);
}
.blog .comments .reply-form .btn-primary:hover {
  background-color: rgba(var(--color-secondary-rgb), 0.8);
}

/*--------------------------------------------------------------
# Blog Home Pagination
--------------------------------------------------------------*/
.blog .blog-pagination {
  margin-top: 30px;
  color: var(--color-secondary-light);
}
.blog .blog-pagination ul {
  display: flex;
  padding: 0;
  margin: 0;
  list-style: none;
}
.blog .blog-pagination li {
  margin: 0 5px;
  transition: 0.3s;
}
.blog .blog-pagination li a {
  color: var(--color-secondary);
  padding: 7px 16px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.blog .blog-pagination li.active, .blog .blog-pagination li:hover {
  background: var(--color-primary);
}
.blog .blog-pagination li.active a, .blog .blog-pagination li:hover a {
  color: var(--color-white);
}</style>
  <!-- =======================================================
  * Template Name: Medilab - v4.7.1
  * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="bi bi-phone"></i> +1 5589 55488 55
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <jsp:include page="assets/module/header.jsp" flush="true"/>
  <!-- End Header -->

  <main id="main" style="padding: 100px 0 0;">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Blog</h2>
          <ol>
            <li><a href="index">Home</a></li>
            <li>Blog</li>
          </ol>
        </div>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row g-5">

          <div class="col-lg-8">

            <div class="row gy-4 posts-list">
                <c:forEach items="${requestScope.listBlog}" var="blog">
                    
               
              <div class="col-lg-6">
                <article class="d-flex flex-column">

                  <div class="post-img">
                    <img src="./resouce/image/${blog.blog_image}" alt="" class="img-fluid">
                  </div>

                  <h2 class="title">
                    <a href="blogs-detail?id=${blog.blog_id}">${blog.title}</a>
                  </h2>

                  <div class="meta-top">
                    <ul>
                      
                      <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-details.html"><time datetime="2022-01-01">${blog.blog_created_date}</time></a></li>
                      
                    </ul>
                  </div>

                  <div class="content">
                    <p>
                        ${blog.bi}
                      </p>
                  </div>

                  <div class="read-more mt-auto align-self-end">
                    <a href="blogs-detail?id=${blog.blog_id}">Read More</a>
                  </div>

                </article>
              </div><!-- End post list item -->

               </c:forEach>

              
              

             

              

            </div><!-- End blog posts list -->
            
          </div>
            <div class="col-lg-4">

            <div class="sidebar">

              <div class="sidebar-item search-form">
                  <h3 class="sidebar-title" >Search</h3>
                <form action="blogs-list" class="mt-3">
                    <input name="txt" type="text" style="border: 1px solid;">
                  <button type="submit"><i class="bi bi-search"></i></button>
                </form>
              </div><!-- End sidebar search formn-->

              <div class="sidebar-item categories">
                <h3 class="sidebar-title">Categories</h3>
                <ul class="mt-3">
                    <c:forEach items="${listCate}" var="i">
                        <li><a href="blogs-list?cid=${i.category_id}">${i.category_name} <span>(${listQuantity.get(i.category_id-1)})</span></a></li>
                    </c:forEach>
                  
                </ul>
              </div><!-- End sidebar categories-->

              <div class="sidebar-item recent-posts">
                <h3 class="sidebar-title">New Posts</h3>

                <div class="mt-3">
                    <c:forEach items="${listTop5}" var="c">
                        <div class="post-item mt-3">
                    <img src="./resouce/image/${c.blog_image}" alt="" class="flex-shrink-0">
                    <div>
                      <h4><a href="blogs-detail?id=${c.blog_id}">${c.title}</a></h4>
                      <time datetime="2020-01-01">${c.blog_created_date}</time>
                    </div>
                  </div><!-- End recent post item-->

                    </c:forEach>
                  
                  

                </div>

              </div><!-- End sidebar recent posts-->
        </div>
      </div>
            <div class="blog-pagination">
              <ul class="justify-content-center">
                <li><a href="#">1</a></li>
                <li class="active"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
              </ul>
            </div><!-- End blog pagination -->
            </section>
    

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <jsp:include page="assets/module/footer.jsp" flush="true"/>
  <!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>