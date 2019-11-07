<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <%@include file="../includes/header.jsp" %> 
    
    <div class="row">
    	<div class="col-lg-12">
    		<h1 class="page-header">Entrant Register</h1>
    	</div>
    	<!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    
    <div class="row">
    	<div class="col-lg-12">
    		<div class="panel panel-default">
    			
    			<div class="panel-heading">Entrant Read Page</div>
    			<!-- /.panel-heading -->
    			<div class="panel-body">
    				
    					<div class="form-group">
    						<label>seq_d</label><input class="form-control" name='seq_e'
    							value='<c:out value="${entrant.seq_e }"/>' readonly="readonly">
    					</div>
    					<div class="form-group">
    						<label>Title</label><input class="form-control" name='e_name'
    							value='<c:out value="${entrant.e_name }"/>' readonly="readonly">
    					</div>
    					<div class="form-group">
    						<label>Wirter</label>
    						<input class="form-control" name='skill'
    							value='<c:out value="${entrant.skill }"/>' readonly="readonly">
    					</div>
    					<button data-oper='modify' class="btn btn-defalut" 
    							onclick="location.href='/entrant/modify?seq_e=<c:out value="${entrant.seq_e }"/>'">Modify</button>
    					<button data-oper='list' class="btn btn-info" onclick="location.href='/entrant/list'">List</button>
    				
    				  			
    			</div>
    		</div>
   		</div> 
   	</div>
	<%@include file="../includes/footer.jsp"%>