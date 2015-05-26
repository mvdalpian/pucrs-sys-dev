ready = ->
	$('#add-list').on 'click', =>
		console.log $('#disciplina_pre_requisitos').val()

		$('#pre-requisito-list').append($('<li></li>').append($('<label for="disciplina[pre_requisito][' + $('#pre-requisito-list li').length + ']">')))

$(document).ready(ready)