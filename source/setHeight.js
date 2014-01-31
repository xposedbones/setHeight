// Generated by CoffeeScript 1.6.3
(function() {
  (function($) {
    return $.fn.setHeight = function(affectChildren, useMin) {
      var height;
      if (typeof affectChildren === "undefined" || affectChildren === null) {
        affectChildren = false;
      }
      if (typeof useMin === "undefined" || useMin === null) {
        useMin = true;
      }
      height = [];
      this.each(function() {
        if (affectChildren) {
          height = [];
          $(this).children().removeAttr("style");
          $(this).children().each(function() {
            return height.push($(this).outerHeight());
          });
          if (useMin) {
            return $(this).children().css("min-height", Math.max.apply(null, height));
          } else {
            return $(this).children().css("height", Math.max.apply(null, height));
          }
        } else {
          $(this).children().removeAttr("style");
          return height.push($(this).outerHeight());
        }
      });
      if (useMin && !affectChildren) {
        return this.css("min-height", Math.max.apply(null, height));
      } else if (!affectChildren) {
        return this.css("height", Math.max.apply(null, height));
      }
    };
  })(jQuery);

}).call(this);
