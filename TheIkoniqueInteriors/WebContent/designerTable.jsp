<!DOCTYPE html>
<%@page import="com.ikonique.bean.User"%>
<%@page import="java.util.List"%>
<html lang="en-US">
<head>
    <title>Interior-Designer Table</title>
     <%@include file="FontFaces.jsp"%>
	<%@include file="commoncss.jsp"%>
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
    
</head>
<jsp:include page="/SelectDesignerDetails"/>
<%List<User> designerList =(List)request.getAttribute("designerList"); %>
<body class="mt32">
<%@include file="adminsidebar.jsp"%>
<%@include file="adminheader.jsp"%>
    <div class="container" style="overflow-x: scroll">
        <h2>
            <span>Interior-Designer Details Table</span>
            <input type="search" placeholder="Search..." class="form-control search-input" data-table="customers-list"/>
        </h2>
        <table class="table table-striped mt32 customers-list" id="myTable">
            <thead>
                <tr>
					<th>User ID<i class="fa fa-fw fa-sort" onclick="sortTable(0)"></i></th>
					<th>First Name<i class="fa fa-fw fa-sort" onclick="sortTable(1)"></i></th>
					<th>Last Name<i class="fa fa-fw fa-sort" onclick="sortTable(2)"></i></th>
					<th>Address<i class="fa fa-fw fa-sort" onclick="sortTable(3)"></i></th>
					<th>Area<i class="fa fa-fw fa-sort" onclick="sortTable(4)"></i></th>
					<th>Contact No<i class="fa fa-fw fa-sort" onclick="sortTable(5)"></i></th>
					<th>Gender<i class="fa fa-fw fa-sort" onclick="sortTable(6)"></i></th>
					<th>Visiting Fees<i class="fa fa-fw fa-sort" onclick="sortTable(7)"></i></th>
					<th>Email-Id<i class="fa fa-fw fa-sort" onclick="sortTable(8)"></i></th>
					<th>Status<i class="fa fa-fw fa-sort" onclick="sortTable(9)"></i></th>
					<th>User image<i class="fa fa-fw fa-sort" onclick="sortTable(10)"></i></th>
					<th>Edit</th>
                    <th>Delete</th>
				</tr>
            </thead>
            <%for(User user1 : designerList) { %>
            <tbody>
                <tr>
                    <td><%=user1.getUser_id() %></td>
                    <td><%=user1.getFirstname() %></td>
                    <td><%=user1.getLastname() %></td>
                    <td><%=user1.getAddress() %></td>
                    <td><%=user1.getArea_id() %></td>
                    <td><%=user1.getMobileno() %></td>
                    <td><%=user1.getGender() %></td>
                    <td><%=user1.getVisitingfees() %></td>
                    <td><%=user1.getEmail() %></td>
                    <td><%=user1.getPassword() %></td>
                    <td>
                    <div class="table-data-feature">
                       <a href=""class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                        <i class="zmdi zmdi-edit"></i>
                        </a>
                     </div>
                    </td>
                    <td>
                     <div class="table-data-feature">
                       <a href="" class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                       <i class="zmdi zmdi-delete"></i>
                       </a>                                    
                  </div>
                  </td>
                </tr>
            </tbody>
            <%} %>
        </table>
    </div>
    <script>
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
        		              // If so, mark as a switch and break the loop:
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
</body>
</html>
