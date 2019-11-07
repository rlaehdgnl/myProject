<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">entrant Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">entrant Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/entrant/modify" method="post">
      
<div class="form-group">
  <label>seq_d</label> 
  <input class="form-control" name='seq_e' 
     value='<c:out value="${entrant.seq_e }"/>' readonly="readonly">
</div>

<div class="form-group">
  <label>Title</label> 
  <input class="form-control" name='e_name' 
    value='<c:out value="${entrant.e_name }"/>' >
</div>

<div class="form-group">      
        <label>실력</label>
        <input type="radio" id="skill" name="skill" value="초보"   
        <c:if test="${entrant.skill == '초보'}"> checked </c:if>
        > 초보
        <input type="radio" id="skill2" name="skill" value="중수" 
        <c:if test="${entrant.skill == '중수'}"> checked  </c:if>
        > 중수      
        <input type="radio" id="skill2" name="skill" value="고수" 
        <c:if test="${entrant.skill == '고수'}"> checked  </c:if>
        > 고수     
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
	      formObj.attr("action", "/entrant/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	    	self.location = "/entrant/list";
			return;
       
	    }
	    
	    formObj.submit();
	  });

});
</script>
  




<%@include file="../includes/footer.jsp"%>
