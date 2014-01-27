(($)->

	$.fn.setHeight = (affectChildren) ->
		affectChildren = false if typeof affectChildren is "undefined" or affectChildren is null
		height = []

		@each ->
			if affectChildren
				height = []
				$(this).children().each ->
					height.push $(this).outerHeight()
				$(this).children().css "min-height", Math.max.apply null,height
			else
				height.push $(this).outerHeight()

		@css("min-height",Math.max.apply null,height) unless affectChildren

) jQuery