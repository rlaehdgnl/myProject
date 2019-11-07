<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <%@include file="../includes/header.jsp" %> 
    
    <div class="row">
    	<div class="col-lg-12">
    		<h1 class="page-header">entrant Register</h1>
    	</div>
    	<!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    
    <div class="row">
    	<div class="col-lg-12">
    		<div class="panel panel-default">
    			
    			<div class="panel-heading">entrant Register</div>
    			<!-- /.panel-heading -->
    			<div class="panel-body">
    				<form role="form" action="/entrant/register" method="post">
    					<div class="form-group">
    						<label>참가자 이름</label><input class="form-control" name="e_name">
    					</div>
    					<div class="form-group">
    					  <label>실력:</label>
					        <input type="radio" name="skill" value="초보" id="skill"> 초보
					        <input type="radio" name="skill" value="중수" id="skill1"> 중수 
					        <input type="radio" name="skill" value="고수" id="skill2"> 고수 
					     </div>
    				
    					
    				
    					<button type="submit" class="btn btn-defalut">Submit Button</button>
    					<button type="reset" class="btn btn-defalut">Reset Button</button>
    				
    				</form>   			
    			</div>
    		</div>
   		</div> 
   	</div>
	<%@include file="../includes/footer.jsp"%>