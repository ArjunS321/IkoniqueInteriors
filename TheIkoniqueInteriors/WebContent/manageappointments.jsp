<!DOCTYPE html>
<%@page import="com.ikonique.bean.BookingInfo"%>
<%@page import="com.ikonique.bean.Booking"%>
<%@page import="com.ikonique.bean.Category"%>
<%@page import="java.util.List"%>
<html lang="en-US">
<head>
    <title>Appointments</title>
    <link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
<!-- Pixel CSS -->
<link type="text/css" href="css/login1css.css" rel="stylesheet">
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        h3 span {
            font-size: 22px;
        }
        h2 input.search-input {
            width: 300px;
            margin-left: auto;
            float: 150
        }
        .mt32 {
            margin-top: 100px;
            margin-left: 300px;
        }
    </style>
   <%@include file="FontFaces.jsp"%>
   <%@include file="commoncss.jsp"%>
</head>

<%
HttpSession httpSession1 = request.getSession(false);
User user = null;
if (null != httpSession1) {
	user = (User) httpSession1.getAttribute("loginBean");
}
%>

<jsp:include page="/SelectBookingDetails"/>
<%List<Booking> bookinglist =(List)request.getAttribute("bookinglist"); %>

<jsp:include page="/SelectBookingInfoDetails"/>
<%List<BookingInfo> bookinginfolist =(List)request.getAttribute("bookinginfolist"); %>

<body class="mt32">
<%@include file="commonsidebar.jsp"%>
<%@include file="commonheader.jsp"%>
    <div class="container" style="overflow-x: scroll">
        <h2>
            <span>Appointments</span>
            <input type="search" placeholder="Search Appointments" class="form-control search-input" data-table="customers-list"/>
            <br>
        </h2>
       
        <table class="table table-striped mt32 customers-list" id="myTable">
            <thead>
                <tr>
                    <th>Booking-Id<i class="fa fa-fw fa-sort" onclick="sortTable(0)"></i></th>
                    <th>Customer Name<i class="fa fa-fw fa-sort" onclick="sortTable(1)"></i></th>
                    <th>Address<i class="fa fa-fw fa-sort" onclick="sortTable(2)"></i></th>
                    <th>Contact-No<i class="fa fa-fw fa-sort" onclick="sortTable(2)"></i></th>
                    <th>Email-Id<i class="fa fa-fw fa-sort" onclick="sortTable(2)"></i></th>
                    <th>Booking-Date<i class="fa fa-fw fa-sort" onclick="sortTable(2)"></i></th>
                    <th>Payment Status<i class="fa fa-fw fa-sort" onclick="sortTable(2)"></i></th>
                    <th>Booking Status<i class="fa fa-fw fa-sort" onclick="sortTable(2)"></i></th>
                    <!-- <th>Edit</th>
                    <th>Delete</th>-->
 		             
		  			 </tr>
		            </thead>
             <%for(Booking booking:bookinglist) { %>
             	<%if(booking.getDesignerid()==user.getUser_id()) {%>
             		<%for(BookingInfo bookinginfo:bookinginfolist) {%>
             		<%if(bookinginfo.getBookingid()==booking.getBookingid()){ %>
             		
            		<tbody>
               	 	<tr>
                    <td><%=bookinginfo.getBookingid() %></td>
                    <td><%=bookinginfo.getBookingfname()%> <%=bookinginfo.getBookinglname() %></td>
                    <td><%=bookinginfo.getBookingaddress()%></td>
                    <td><%=bookinginfo.getBookingcno() %></td>
                    <td><%=bookinginfo.getBookingemail() %></td>
                    <td><%=bookinginfo.getBookingdate() %></td>
                    <td><%=booking.getPaymentstatus() %></td>
                    <td><%=booking.getBookingstatus() %></td>
                    <%-- <td>
                    <div class="table-data-feature">
                       <a href="EditProductsDetails?categoryId=<%=category.getCategory_id() %>"class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                        <i class="zmdi zmdi-edit"></i>
                        </a>
                     </div>
                    </td>
                    <td>
                     <div class="table-data-feature">
                       <a href="DelectCategoryDetails?categoryId=<%=category.getCategory_id() %>" data-toggle="modal" data-target="#modal-default" class="item" id="delbtn" data-toggle="tooltip" data-placement="top" title="Delete">
                       <i class="zmdi zmdi-delete"></i>
                       </a>                                    
                  </div>
                  </td> --%>
                </tr>
                </tbody>
                 <%} %> 
                <%} %>
                <%} %>
             <%} %> 
        </table>
    </div>
	<script src="neuro/vendor/jquery/dist/jquery.min.js"></script>
				<script src="neuro/vendor/popper.js/dist/umd/popper.min.js"></script>
				<script src="neuro/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
				<script src="neuro/vendor/headroom.js/dist/headroom.min.js"></script>

				<!-- Vendor JS -->
				<script src="neuro/vendor/onscreen/dist/on-screen.umd.min.js"></script>
				<script src="neuro/vendor/nouislider/distribute/nouislider.min.js"></script>
				<script
					src="neuro/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
				<script src="neuro/vendor/waypoints/lib/jquery.waypoints.min.js"></script>
				<script src="neuro/vendor/jarallax/dist/jarallax.min.js"></script>
				<script src="neuro/vendor/jquery.counterup/jquery.counterup.min.js"></script>
				<script
					src="neuro/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
				<script
					src="neuro/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
				<script src="neuro/vendor/prismjs/prism.js"></script>

				<script async defer src="https://buttons.github.io/buttons.js"></script>

				<!-- Neumorphism JS -->
				<script src="neuro/assets/js/neumorphism.js"></script>
				<%@include file="commonjs.jsp"%>
    <script>
//     $('#delbtn').onclick(function(){
//     	$('#modal-default').modal('show');
//     })
    
        (function(document) {
            'use strict';

            var TableFilter = (function(myArray) {
                var search_input;

                function _onInputSearch(e) {
                    search_input = e.target;
                    var tables = document.getElementsByClassName(search_input.getAttribute('data-table'));
                    myArray.forEach.call(tables, function(table) {
                        myArray.forEach.call(table.tBodies, function(tbody) {
                            myArray.forEach.call(tbody.rows, function(row) {
                                var text_content = row.textContent.toLowerCase();
                                var search_val = search_input.value.toLowerCase();
                                row.style.display = text_content.indexOf(search_val) > -1 ? '' : 'none';
                            });
                        });
                    });
                }

                return {
                    init: function() {
                        var inputs = document.getElementsByClassName('search-input');
                        myArray.forEach.call(inputs, function(input) {
                            input.oninput = _onInputSearch;
                        });
                    }
                };
            })(Array.prototype);

            document.addEventListener('readystatechange', function() {
                if (document.readyState === 'complete') {
                    TableFilter.init();
                }
            });

        })(document);
        
        function sortTable(n) {
        	  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
        	  table = document.getElementById("myTable");
        	  switching = true;
        	  dir = "asc";
        	  while (switching) {
        		  switching = false;
        		  rows = table.rows;
        		  for (i = 1; i < (rows.length - 1); i++) {
        			  shouldSwitch = false;
        			  x = rows[i].getElementsByTagName("TD")[n];
        		      y = rows[i + 1].getElementsByTagName("TD")[n];
        		      if (dir == "asc") {
        		          if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
        		            // If so, mark as a switch and break the loop:
        		            shouldSwitch = true;
        		            break;
        		          }
        		      }
        		      else if (dir == "desc") 
        		      {
        		    	  if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) 
        		    	  {
        		              shouldSwitch = true;
        		              break;
        		          }
        		      }
        		  }
        		  if (shouldSwitch) {
        			  rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        		      switching = true;
        		      switchcount ++;
        		  }
        		  else {
        			  if (switchcount == 0 && dir == "asc") {
        			        dir = "desc";
        			        switching = true;
        			      }
        		  }
        	  }
        }
    </script>
    <%@include file="commonjs.jsp"%>
</body>
</html>
