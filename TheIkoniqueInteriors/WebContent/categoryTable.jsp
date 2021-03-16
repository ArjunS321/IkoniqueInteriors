<!DOCTYPE html>
<%@page import="com.ikonique.bean.Category"%>
<%@page import="java.util.List"%>
<html lang="en-US">
<head>
    <title>Category Table</title>
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
<body class="mt32">
<jsp:include page="/SelectCategoryDetails"/>
<%List<Category> categoryList =(List)request.getAttribute("categoryList"); %>
<%@include file="adminsidebar.jsp"%>
<%@include file="adminheader.jsp"%>
    <div class="container" style="overflow-x: scroll">
        <h2>
            <span>Category Details Table</span>
            <input type="search" placeholder="Search..." class="form-control search-input" data-table="customers-list"/>
        </h2>
        <table class="table table-striped mt32 customers-list" id="myTable">
            <thead>
                <tr>
                    <th>Category-ID<i class="fa fa-fw fa-sort" onclick="sortTable(0)"></i></th>
                    <th>Category Name<i class="fa fa-fw fa-sort" onclick="sortTable(1)"></i></th>
                    <th>Status<i class="fa fa-fw fa-sort" onclick="sortTable(2)"></i></th>
                    <!-- <th><a class="item" data-toggle="tooltip" data-placement="top" title="Add Category" href="insertproduct.jsp">
                    <i class="fa fa-plus"></i></a></th> -->
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <%for(Category category:categoryList) { %>
            <tbody>
                <tr>
                    <td><%=category.getCategory_id() %></td>
                    <td><%=category.getCategory_name() %></td>
                    <td><%=category.getStatus() %></td>
                    <td>
                    <div class="table-data-feature">
                       <a href="EditProductsDetails?categoryId=<%=category.getCategory_id() %>"class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                        <i class="zmdi zmdi-edit"></i>
                        </a>
                     </div>
                    </td>
                    <td>
                     <div class="table-data-feature">
                       <a href="DelectCategoryDetails?categoryId=<%=category.getCategory_id() %>" class="item" data-toggle="tooltip" data-placement="top" title="Delete">
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
