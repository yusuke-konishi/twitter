ready = ->
  $ ->
    $('#tweet_content').on('keyup keydown keypress change',->
      thisValueLength = $(this).val().length
      limit = 255
      if thisValueLength == 0
        $('.count').html(limit - thisValueLength).addClass("text-warning").css('font-weight','bold');
      else if thisValueLength <= limit
        $('.count').html(limit - thisValueLength).removeClass("text-warning").css('font-weight','normal');
      else
        $('.count').html(limit - thisValueLength).addClass("text-warning").css('font-weight','bold');
    ).keyup()

$(document).ready(ready)
$(document).on('page:load', ready)
