<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <%@include file="../includes/header.jsp" %> 
    
    <div class="row">
    	<div class="col-lg-12">
    		<h1 class="page-header">daejinpyo Register</h1>
    	</div>
    	<!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    
    <div class="row">
    	<div class="col-lg-12">
    		<div class="panel panel-default">
    			
    			<div class="panel-heading">daejinpyo Register</div>
    			<!-- /.panel-heading -->
    			<div class="panel-body">
    				<form role="form" action="/daejinpyo/register" method="post">
    					<div class="form-group">
    						<label>Title</label><input class="form-control" name="d_name">
    					</div>
    				
    					
    				
    					<button type="submit" class="btn btn-defalut">Submit Button</button>
    					<button type="reset" class="btn btn-defalut">Reset Button</button>
    				
    				</form>   			
    			</div>
    		</div>
   		</div> 
   	</div>
	<%@include file="../includes/footer.jsp"%>