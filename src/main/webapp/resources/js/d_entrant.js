console.log("D_Entrant Module.........");
var d_entrantService = (function(){
	
	function add(d_entrant, callback, error){
		console.log("add d_entrant..........");
		
		$.ajax({
			type : 'post',
			url : '/d_entrant/new',
			data : JSON.stringify(d_entrant),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		})
	}
	
	function getList(param, callback, error) {
		
		var seq_d = param.seq_d;
		
		$.getJSON("/d_entrant/list/" + seq_d + ".json",
			function(data){
				if(callback) {
					callback(data);
				}
		}).fail(function(xhr, status, err){
		if (error) {
			error();
		}
		});
	}
	
	return {
		add:add,
		getList:getList
	};
})();
