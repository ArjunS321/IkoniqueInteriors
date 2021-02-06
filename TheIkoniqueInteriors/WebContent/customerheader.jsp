<%@page import="com.ikonique.bean.User"%>
<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>
<% HttpSession httpSession = request.getSession(false);
	User user = null;   
	if(null!=httpSession){
	   user = (User)httpSession.getAttribute("loginBean");
   }
%>

<header class="header-desktop" style="background-color: #e6e7ee;">
 <!-- <link data-require="sweet-alert@*" data-semver="0.4.2" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" /> -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<div class="section__content section__content--p30" >
		<div class="container-fluid">
			<div class="header-wrap" style="position: sticky;z-index: 9">
				<form id="from1" class="form-header" action="" method="POST">
					<input class="au-input au-input--xl" type="text" name="search"
						placeholder="Search Products...." />
					<button class="au-btn--submit" type="submit">
						<i class="zmdi zmdi-search"></i>
					</button>
				</form>
				<div class="header-button">
					<div class="noti-wrap">
						<!-- 									<div class="noti__item js-item-menu"> -->
						<!-- 										<i class="zmdi zmdi-comment-more"></i> <span class="quantity">1</span> -->
						<!-- 										<div class="mess-dropdown js-dropdown"> -->
						<!-- 											<div class="mess__title"> -->
						<!-- 												<p>You have 2 news message</p> -->
						<!-- 											</div> -->
						<!-- 											<div class="mess__item"> -->
						<!-- 												<div class="image img-cir img-40"> -->
						<!-- 													<img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" /> -->
						<!-- 												</div> -->
						<!-- 												<div class="content"> -->
						<!-- 													<h6>Michelle Moreno</h6> -->
						<!-- 													<p>Have sent a photo</p> -->
						<!-- 													<span class="time">3 min ago</span> -->
						<!-- 												</div> -->
						<!-- 											</div> -->
						<!-- 											<div class="mess__item"> -->
						<!-- 												<div class="image img-cir img-40"> -->
						<!-- 													<img src="images/icon/avatar-04.jpg" alt="Diane Myers" /> -->
						<!-- 												</div> -->
						<!-- 												<div class="content"> -->
						<!-- 													<h6>Diane Myers</h6> -->
						<!-- 													<p>You are now connected on message</p> -->
						<!-- 													<span class="time">Yesterday</span> -->
						<!-- 												</div> -->
						<!-- 											</div> -->
						<!-- 											<div class="mess__footer"> -->
						<!-- 												<a href="#">View all messages</a> -->
						<!-- 											</div> -->
						<!-- 										</div> -->
						<!-- 									</div> -->
						<!-- 									<div class="noti__item js-item-menu"> -->
						<!-- 										<i class="zmdi zmdi-email"></i> <span class="quantity">1</span> -->
						<!-- 										<div class="email-dropdown js-dropdown"> -->
						<!-- 											<div class="email__title"> -->
						<!-- 												<p>You have 3 New Emails</p> -->
						<!-- 											</div> -->
						<!-- 											<div class="email__item"> -->
						<!-- 												<div class="image img-cir img-40"> -->
						<!-- 													<img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" /> -->
						<!-- 												</div> -->
						<!-- 												<div class="content"> -->
						<!-- 													<p>Meeting about new dashboard...</p> -->
						<!-- 													<span>Cynthia Harvey, 3 min ago</span> -->
						<!-- 												</div> -->
						<!-- 											</div> -->
						<!-- 											<div class="email__item"> -->
						<!-- 												<div class="image img-cir img-40"> -->
						<!-- 													<img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" /> -->
						<!-- 												</div> -->
						<!-- 												<div class="content"> -->
						<!-- 													<p>Meeting about new dashboard...</p> -->
						<!-- 													<span>Cynthia Harvey, Yesterday</span> -->
						<!-- 												</div> -->
						<!-- 											</div> -->
						<!-- 											<div class="email__item"> -->
						<!-- 												<div class="image img-cir img-40"> -->
						<!-- 													<img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" /> -->
						<!-- 												</div> -->
						<!-- 												<div class="content"> -->
						<!-- 													<p>Meeting about new dashboard...</p> -->
						<!-- 													<span>Cynthia Harvey, April 12,,2018</span> -->
						<!-- 												</div> -->
						<!-- 											</div> -->
						<!-- 											<div class="email__footer"> -->
						<!-- 												<a href="#">See all emails</a> -->
						<!-- 											</div> -->
						<!-- 										</div> -->
						<!-- 									</div> -->
						<div class="noti__item">
							<a href="cart.jsp"><i class="fas fa-shopping-cart"></i> </a>
						</div>
						<div class="noti__item js-item-menu">
							<i class="zmdi zmdi-notifications"></i> <span class="quantity">3</span>
							<div class="notifi-dropdown js-dropdown">
								<div class="notifi__title">
									<p>You have 3 Notifications</p>
								</div>
								<div class="notifi__item">
									<div class="bg-c1 img-cir img-40">
										<i class="zmdi zmdi-email-open"></i>
									</div>
									<div class="content">
										<p>You got a email notification</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__item">
									<div class="bg-c2 img-cir img-40">
										<i class="zmdi zmdi-account-box"></i>
									</div>
									<div class="content">
										<p>Your account has been blocked</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__item">
									<div class="bg-c3 img-cir img-40">
										<i class="zmdi zmdi-file-text"></i>
									</div>
									
									<div class="content">
										<p>You got a new file</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__footer">
									<a href="#">All notifications</a>
								</div>
							</div>
						</div>
					</div>
					<div class="account-wrap">
						<div class="account-item clearfix js-item-menu">
							<div class="image">
								<img src="images/icon/avatar-01.jpg" alt="John Doe" />
							</div>
							<div class="content">
								<a class="js-acc-btn" href="#"><%=user.getFirstname()%> <%=user.getLastname() %></a>
							</div>
							<div class="account-dropdown js-dropdown">
								<div class="info clearfix">
									<div class="image">
										<a href="editprofile.jsp"> <img src="images/icon/avatar-01.jpg"
											alt="John Doe" />
										</a>
									</div>
									<div class="content">
										<h5 class="name">
											<a href="editprofile.jsp"><%=user.getFirstname()%> <%=user.getLastname() %></a>
										</h5>
										<span class="email"><%=user.getEmail() %></span>
									</div>
									
								</div>
								<div class="account-dropdown__body">
									<div class="account-dropdown__item">
										<a href="editpro.jsp"> <i class="far fa-edit"></i>Edit Profile
										</a>
									</div>
									<div class="account-dropdown__item">
										<a href="DeleteUserRecord" id="click" onclick="return confirm('Are You Sure You Want To Delete Acoount?')"> <i class="fas fa-user-minus"></i>Delete Account?
										</a>
									</div>
									<div class="account-dropdown__item">
										<a href="#"> <i class="fas fa-key"></i>Change Password
										</a>
									</div>
								</div>
								<div class="account-dropdown__footer">
									<a href="LogoutServlet"> <i class="fas fa-sign-out-alt"></i>Logout
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- <script>
    document.querySelector('#click').addEventListener('onclick', function(e) {
      var form = this;
      
      e.preventDefault();
      
      swal({
          title: "Are you sure?",
          text: "You will not be able to recover this imaginary file!",
          icon: "warning",
          buttons: [
            'No, cancel it!',
            'Yes, I am sure!'
          ],
          dangerMode: true,
        }).then(function(isConfirm) {
          if (isConfirm) {
            swal({
              title: 'Shortlisted!',
              text: 'Candidates are successfully shortlisted!',
              icon: 'success'
            }).then(function() {
              form.onclick();
            });
          } else {
            swal("Cancelled", "Your imaginary file is safe :)", "error");
          }
        });
    });
  </script>
  
  <style>
    .swal-button--confirm {
      background-color: #DD6B55;
    }
  </style>
 -->
<%@include file="commonjs.jsp"%>