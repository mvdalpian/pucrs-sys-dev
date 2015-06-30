ready = ->
	$('#add-list').on 'click', =>

		if $('#disciplina_pre_requisitos').val()

			contains = false
			$('input[name*="disciplina[pre_requisito]"]').each -> 
				if $(this).val() == $('#disciplina_pre_requisitos').val()
					contains = true

			if !contains
				$('#pre-requisito-list').append(
					$('<li></li>').append(
						$('<label for="disciplina[pre_requisito][' + $('#pre-requisito-list li').length + ']">').html($('#disciplina_pre_requisitos option:selected').text())
					).append(
						$('<input type="hidden" name="disciplina[pre_requisito][' + $('#pre-requisito-list li').length + ']" id="disciplina_pre_requisito_' + $('#pre-requisito-list li').length + '" value="'+$('#disciplina_pre_requisitos').val()+'" class="disciplina_pre_requisito"/>')
					).append(
						$('<a></a>')
					)
				)
			else
				alert 'Esta disciplina já está na lista!'

			$('#disciplina_pre_requisitos').val('')

$(document).ready(ready)
