<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">daejinpyo Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">daejinpyo Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/daejinpyo/modify" method="post">
      
<div class="form-group">
  <label>seq_d</label> 
  <input class="form-control" name='seq_d' 
     value='<c:out value="${daejinpyo.seq_d }"/>' readonly="readonly">
</div>

<div class="form-group">
  <label>Title</label> 
  <input class="form-control" name='d_name' 
    value='<c:out value="${daejinpyo.d_name }"/>' >
</div>



  <button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
  <button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
  <button type="submit" data-oper='list' class="btn btn-info">List</button>
</form>


      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->

<script type="text/javascript">
$(document).ready(function() {


	  var formObj = $("form");

	  $('button').on("click", function(e){
	    
	    e.preventDefault(); 
	    
	    var operation = $(this).data("oper");
	    
	    console.log(operation);
	    
	    if(operation === 'remove'){
	      formObj.attr("action", "/daejinpyo/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	    	self.location = "/daejinpyo/list";
			return;
       
	    }
	    
	    formObj.submit();
	  });

});
</script>
  




<%@include file="../includes/footer.jsp"%>
