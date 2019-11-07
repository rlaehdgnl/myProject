<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <%@include file="../includes/header.jsp" %> 
    
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table  class="table table-striped table-bordered table-hover" >
                                <thead>
                                    <tr>
                                        <th>#번호</th>
                                        <th>참가자이름</th>
                                        <th>실력</th>
                                      
                                    </tr>
                                </thead>
                                <c:forEach items="${list}" var="entrant">
                                	<tr>
                                		<td><c:out value="${entrant.seq_e}" /></td>
                                		<td><a href='/entrant/get?seq_e=<c:out value="${entrant.seq_e}" />'>
                                		<c:out value="${entrant.e_name }" /></a></td>
                                		<td><c:out value="${entrant.skill  }"/></td>
                                		
                                	</tr>
                                </c:forEach>
                                </table>
                               <div class="panel-heading">entrant List Page
                               <button id='regbtn' type="button" class="btn btn-xs pull-right">Register new entrant</button>
                               </div>
                        	<!-- Modal 추가 -->
                        	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                        		aria-labelledby="myModalLabel" aria-hidden="true">
                        		<div class="modal-dialog">
                        			<div class="modal-content">
                        				<div class="modal-header">
                        					<button type="button" class="close" data-dismiss="modal"
                        					aria-hidden="true">&times;</button>
                        					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
                        					</div>
                        					<div class="modal-body">처리가 완료되었습니다.</div>
                        					<div class="modal-footer">
                        						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        						<button type="button" class="btn btn-primary">Save changes</button>
                        					</div>
                        				</div>
                        			</div>
                        		
                             
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
   </div>
        <!-- /#page-wrapper -->

   <%@include file="../includes/footer.jsp" %>
   
   <script type="text/javascript">
   	$(document).ready(function() {
   		
   		var result = '<c:out value="${result}"/>';

   	
   		checkModal(result);
   		
   		history.replaceState({},null,null);
   		
   		function checkModal(result) {
   			
   			if(result === '' || history.state) {
   				return;
   			}
   			
   			if(parseInt(result) > 0) {
   				$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
   			}
   			$("#myModal").modal("show");
   		}
   		
   		$("#regbtn").on("click", function(){
   			self.location = "/entrant/register";
   		});
   	});
  </script>
