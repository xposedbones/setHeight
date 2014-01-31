(($)->

	$.fn.setHeight = (affectChildren, useMin) ->
		affectChildren = false if typeof affectChildren is "undefined" or affectChildren is null
		useMin = true if typeof useMin is "undefined" or useMin is null
		height = []

		@each ->
			if affectChildren
				height = []
				$(this).children().removeAttr "style"
				$(this).children().each ->
					height.push $(this).outerHeight()
				if useMin
					$(this).children().css "min-height", Math.max.apply null,height
				else
					$(this).children().css "height", Math.max.apply null,height
			else
				$(this).children().removeAttr "style"
				height.push $(this).outerHeight()
		if useMin and !affectChildren
			@css("min-height",Math.max.apply null,height)
		else if !affectChildren
			@css("height",Math.max.apply null,height)

) jQuery