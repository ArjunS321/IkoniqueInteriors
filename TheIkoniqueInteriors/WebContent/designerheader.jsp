<%@page import="com.ikonique.bean.User"%>
<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>
<% HttpSession httpSession1 = request.getSession(false);
	User customeruser = null;   
	if(null!=httpSession1){
		customeruser = (User)httpSession1.getAttribute("loginBean");
   }
%>

<header class="header-desktop" style="background-color: #e6e7ee;">
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
							<%if(customeruser.getUserProfilepicString()!=null){ %>
								<img src="data:image/jpg;base64,<%=customeruser.getUserProfilepicString() %>" />
								<%}else{ %>
								<img src="bg-img/Blank-Photo.png">
								<%} %>
							</div>
							<div class="content">
								<a class="js-acc-btn" href="#"><%=customeruser.getFirstname()%> <%=customeruser.getLastname() %></a>
							</div>
							<div class="account-dropdown js-dropdown">
								<div class="info clearfix">
									<div class="image">
									<%if(customeruser.getUserProfilepicString()!=null){ %>
										<a href="editpro.jsp">
											<img src="data:image/jpg;base64,<%=customeruser.getUserProfilepicString() %>"/>
										</a>
										<%}else{ %>
											<a href="editpro.jsp">
											<img src="bg-img/Blank-Photo.png">
											</a>
										<%} %>
									</div>
									<div class="content">
										<h5 class="name">
											<a href="editpro.jsp"><%=customeruser.getFirstname()%> <%=customeruser.getLastname() %></a>
										</h5>
										<span class="email"><%=customeruser.getEmail() %></span>
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
										<a href="changepassword.jsp"> <i class="fas fa-key"></i>Change Password
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