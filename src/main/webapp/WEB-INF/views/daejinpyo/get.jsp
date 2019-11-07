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
    			
    			<div class="panel-heading">daejinpyo Read Page</div>
    			<!-- /.panel-heading -->
    			<div class="panel-body">
    				
    					<div class="form-group">
    						<label>seq_d</label><input class="form-control" name='seq_d'
    							value='<c:out value="${daejinpyo.seq_d }"/>' readonly="readonly">
    					</div>
    					<div class="form-group">
    						<label>Title</label><input class="form-control" name='d_name'
    							value='<c:out value="${daejinpyo.d_name }"/>' readonly="readonly">
    					</div>
    					<button data-oper='modify' class="btn btn-defalut" 
    							onclick="location.href='/daejinpyo/modify?seq_d=<c:out value="${daejinpyo.seq_d }"/>'">Modify</button>
    					<button data-oper='list' class="btn btn-info" onclick="location.href='/daejinpyo/list'">List</button>
    				
    				  			
    			</div>
    		</div>
   		</div> 
   	</div>
   	
   	<div class="row">
    	<div class="col-lg-12">
    		<!-- /.panel -->
    		<div class="panel panel-default">
    			<!--  <div class="panel-heading">
    				<i class="fa fa-comments fa-fw"></i> Reply
    			</div>
    			-->
    			<div class="panel-heading">
    			<i class="fa fa-comments fa-fw"></i> 참가자
    				<button id='addD_entrantBtn' calss='btn btn-primary btn-xs pull-right'>참가자 등록</button>
    			</div>
    			<div class="panel-body">
    			
    				<ul class="chat">
    					<!-- start reply -->
    					<li class="left clearfix" data-seq_e='50'>
    						<div>
    							<div class="header">
    								<strong class="primary-font">홍길동</strong>
    								<small class="pull-right text-muted">2018-01-01 13:13</small>
    							</div>
    							<P>Good job!</P>
    						</div>
    					</li>
    					<!-- end reply -->
    				</ul>
    				<!-- ./ end ul -->
    			</div>
    			<!-- /.panel .chat-panel -->
    			<div class ="panel-footer">
    				
    			</div>
    		</div>
    		<!-- ./ end row -->
    	</div>
    </div>
    
    <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">D_ENTRANT MODAL</h4>
                                        </div>
                                        <div class="modal-body">
                                        <!--  
                                        	<div class="form-group">
                                        		<label>참가자</label>
                                        		<input class="form-control" name='d_entrant' value='새로운 참가자'>
                                        	</div>
                                        	-->
                                        	<div class="form-group">
                                        		<label>이름</label>
                                        		<input class="form-control" name='e_name' value='이름'>
                                        	</div>
											  <!-- 
                                        	<div class="form-group">
                                        		<label>Reply Date</label>
                                        		<input class="form-control" name='replyDate' value=''>
                                        	</div>
                                        		-->
                                        </div>
                                        
                                        <div class="modal-footer">
                                            <button id='modalModBtn' type="button" class="btn warning" >수정</button>
                                            <button id='modalRemoveBtn' type="button" class="btn btn-danger" >삭제</button>
                                            <button id='modalRegisterBtn' type="button" class="btn btn-primary" >추가</button>
                                            <button id='modalCloseBtn' type="button" class="btn btn-default">닫기</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
	<%@include file="../includes/footer.jsp"%>
	
<script type="text/javascript" src="/resources/js/d_entrant.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	var seq_dValue = '<c:out value="${daejinpyo.seq_d}"/>';
	var d_entrantUL = $(".chat");
	
		showList(1);
		
		function showList(page){
			
			d_entrantService.getList({seq_d:seq_dValue},function(list){
			
				var str="";
				if(list == null || list.lenght == 0){
					
					d_entrantUL.html("");
					
					return;
				}
				for (var i = 0, len = list.length || 0; i < len; i++) {
					str +="<li class='left clearfix' data-seq_e='"+list[i].seq_e+"'>";
					str +="	<div><div class='header'><strong class='primary-font'>"+list[i].seq_e+"</strong>";
					//str +="		<small calss='pull-right text-muted'>"+replyService.displayTime(list[i].replyDate)+"</small><div>";
					str +="		<p>"+list[i].e_name+"</p><div></li>";
				}
				
				d_entrantUL.html(str);
				
			});//end funtion
		}//end showList
		
		var modal = $(".modal");
		//var modalInputD_entrant	= modal.find("input[name='d_entrant']");
		var modalInputE_name = modal.find("input[name='e_name']");
		//var modalInputReplyDate	= modal.find("input[name='replyDate']");
		
		var modalModBtn = $("#modalModBtn");
		var modalRemoveBtn = $("#modalRemoveBtn");
		var modalRegisterBtn = $("#modalRegisterBtn");
		
		$("#addD_entrantBtn").on("click", function(e){
			
			modal.find("input").val("");
			//modalInputReplyDate.closest("div").hide();
			modal.find("button[id !='modalCloseBtn']").hide();
			
			modalRegisterBtn.show();
			
			$(".modal").modal("show");
		});
		
		modalRegisterBtn.on("click", function(e){
			
			var d_entrant = {
					//d_entrant:modalInputD_entrant.val(),
					e_name:modalInputE_name.val(),
					seq_d:seq_dValue
			};
			d_entrantService.add(d_entrant, function(result){
				
				alert(result);
				
				modal.find("input").val("");
				modal.modal("hide");
				
				showList(1);
				
			});
		});
});

</script>




