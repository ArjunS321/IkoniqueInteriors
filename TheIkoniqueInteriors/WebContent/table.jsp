<!DOCTYPE html>
<%@page import="com.ikonique.bean.User"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Tables</title>

   <%@include file="FontFaces.jsp"%>
	<%@include file="commoncss.jsp"%>

</head>
<body class="animsition">
<%List<User> userList =(List)request.getAttribute("userList"); %>
<%@include file="adminsidebar.jsp"%>
<%@include file="adminheader.jsp"%>
    <div class="page-wrapper">
		<!-- PAGE CONTAINER-->
		<div class="page-container">
		<!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">Customer Information table</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
<!--                                         <div class="rs-select2--light rs-select2--md"> -->
<!--                                             <select class="js-select2" name="property"> -->
<!--                                                 <option selected="selected">All Properties</option> -->
<!--                                                 <option value="">Option 1</option> -->
<!--                                                 <option value="">Option 2</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
<!--                                         <div class="rs-select2--light rs-select2--sm"> -->
<!--                                             <select class="js-select2" name="time"> -->
<!--                                                 <option selected="selected">Today</option> -->
<!--                                                 <option value="">3 Days</option> -->
<!--                                                 <option value="">1 Week</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
                                        <button class="au-btn-filter">
                                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
<!--                                     <div class="table-data__tool-right"> -->
<!--                                         <button class="au-btn au-btn-icon au-btn--green au-btn--small"> -->
<!--                                             <i class="zmdi zmdi-plus"></i>add item</button> -->
<!--                                         <div class="rs-select2--dark rs-select2--sm rs-select2--dark2"> -->
<!--                                             <select class="js-select2" name="type"> -->
<!--                                                 <option selected="selected">Export</option> -->
<!--                                                 <option value="">Option 1</option> -->
<!--                                                 <option value="">Option 2</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
<!--                                     </div> -->
                                </div>
                                <div class="col-lg-9">
                                <div class="table-responsive table-responsive-data2" style="overflow-x: scroll !important;">
                                    <table class="table  table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>Role</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Address</th>
                                                <th>Area</th>
                                                <th>Contact No.</th>
                                                <th>Gender</th>
                                                <th>Email-Id</th>
                                                <th>Status</th>
                                                <th>User image</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                         <%for(User user:userList) { %>
                                        <tbody>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td><%=user.getUser_id() %></td>
                                                <td>
                                                    <span class="block-email"><%=user.getFirstname() %></span>
                                                </td>
                                                <td class="desc"><%=user.getLastname() %></td>
                                                <td><%=user.getAddress() %></td>
                                                <td>
                                                    <span class="status--process"><%=user.getArea_id() %></span>
                                                </td>
                                                <td><%=user.getMobileno() %></td>
                                                <td><%=user.getGender() %></td>
                                                <td><%=user.getEmail() %></td>
                                                <td><%=user.getPassword() %></td>
                                                <td>$679.00</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            
                                            <tr class="spacer"></tr>
                                       </tbody>
                                       <%} %>
                                    </table>
                                </div>
                                </div>
                                <br>
                                <br>
                                <h3 class="title-5 m-b-35">Interior Designer Information table</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
<!--                                         <div class="rs-select2--light rs-select2--md"> -->
<!--                                             <select class="js-select2" name="property"> -->
<!--                                                 <option selected="selected">All Properties</option> -->
<!--                                                 <option value="">Option 1</option> -->
<!--                                                 <option value="">Option 2</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
<!--                                         <div class="rs-select2--light rs-select2--sm"> -->
<!--                                             <select class="js-select2" name="time"> -->
<!--                                                 <option selected="selected">Today</option> -->
<!--                                                 <option value="">3 Days</option> -->
<!--                                                 <option value="">1 Week</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
                                        <button class="au-btn-filter">
                                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
<!--                                     <div class="table-data__tool-right"> -->
<!--                                         <button class="au-btn au-btn-icon au-btn--green au-btn--small"> -->
<!--                                             <i class="zmdi zmdi-plus"></i>add item</button> -->
<!--                                         <div class="rs-select2--dark rs-select2--sm rs-select2--dark2"> -->
<!--                                             <select class="js-select2" name="type"> -->
<!--                                                 <option selected="selected">Export</option> -->
<!--                                                 <option value="">Option 1</option> -->
<!--                                                 <option value="">Option 2</option> -->
<!--                                             </select> -->
<!--                                             <div class="dropDownSelect2"></div> -->
<!--                                         </div> -->
<!--                                     </div> -->
                                </div>
                                <div class="col-lg-9">
                                <div class="table-responsive table-responsive-data2" style="overflow-x: scroll !important;">
                                    <table class="table  table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>Role</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Address</th>
                                                <th>Area</th>
                                                <th>Contact No.</th>
                                                <th>Gender</th>
                                                <th>Email-Id</th>
                                                <th>Status</th>
                                                <th>Visiting fees</th>
                                                <th>User image</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td>Lori Lynch</td>
                                                <td>
                                                    <span class="block-email">lori@example.com</span>
                                                </td>
                                                <td class="desc">Samsung S8 Black</td>
                                                <td>2018-09-27 02:12</td>
                                                <td>
                                                    <span class="status--process">Processed</span>
                                                </td>
                                                <td>$679.00</td>
                                                <td>$679.00</td>
                                                <td>$679.00</td>
                                                <td>$679.00</td>
                                                <td>$679.00</td>
                                                <td>$679.00</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                       </tbody>
                                    </table>
                                </div>
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

     </div>

 
	<%@include file="commonjs.jsp"%>


</body>

</html>
<!-- end document-->
