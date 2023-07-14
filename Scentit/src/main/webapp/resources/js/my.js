   	$('#plus_cast').on('click',function(){
    		let input = document.createElement('input');
    		input.setAttribute('type','text');
    		input.setAttribute('class','form-control form-control-user');
    		input.setAttribute('placeholder','출연진');
    		input.setAttribute('id','cast_name');
    		$('#cast_name_area').append(input);
    	})