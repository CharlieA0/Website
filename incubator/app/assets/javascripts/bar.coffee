bar = () ->
  blue = "#001531"
  if 'projects' in window.location.pathname or window.location.pathname is "/projects"
    $("#Project").children().children().css("border-bottom-style", "solid")
    $("#Project").children().children().css("border-top-style", "solid")
    $("#Project").children().children().css("border-color", blue)
    $("#Project").children().children().css("color", blue)
  else if 'contribute' in window.location.pathname or window.location.pathname is "/contribute"
    $("#Contribute").children().children().css("border-bottom-style", "solid")
    $("#Contribute").children().children().css("border-top-style", "solid")
    $("#Contribute").children().children().css("border-color", blue)
    $("#Contribute").children().children().css("color", blue)
  else if 'background' in window.location.pathname or window.location.pathname is "/background"
    $("#Background").children().children().css("border-bottom-style", "solid")
    $("#Background").children().children().css("border-top-style", "solid")
    $("#Background").children().children().css("border-color", blue)
    $("#Background").children().children().css("color", blue)
  else if 'about_us' in window.location.pathname or window.location.pathname is "/about_us"
    $("#Background").children().children().css("border-bottom-style", "solid")
    $("#Background").children().children().css("border-top-style", "solid")
    $("#Background").children().children().css("border-color", blue)
    $("#Background").children().children().css("color", blue)
  else if 'users' in window.location.pathname or window.location.pathname is "/users"
    $("#User").children().children().css("border-bottom-style", "solid")
    $("#User").children().children().css("border-top-style", "solid")
    $("#User").children().children().css("border-color", blue)
    $("#User").children().children().css("color", blue)
  else if 'course' in window.location.pathname or window.location.pathname is "/course"
    $("#Course").children().children().css("border-bottom-style", "solid")
    $("#Course").children().children().css("border-top-style", "solid")
    $("#Course").children().children().css("border-color", blue)
    $("#Course").children().children().css("color", blue)
  else if window.location.pathname is "/"
    $("#Home").children().children().css("border-bottom-style", "solid")
    $("#Home").children().children().css("border-top-style", "solid")
    $("#Home").children().children().css("border-color", blue)
    $("#Home").children().children().css("color", blue)
  else

mouseover_bar = () ->
  blue = "#001531"
  $(".bar_tab").mouseover ->
    $(this).children().children().css("border-bottom-style", "solid")
    $(this).children().children().css("border-top-style", "solid")
    $(this).children().children().css("border-color", blue)
    $(this).children().children().css("color", blue)
  $(".bar_tab").mouseout ->
    $(this).children().children().css("border-style", "none")
    $(this).children().children().css("color", '#0000C')
    bar()
$ bar
$(document).on('page:load', bar)
$ mouseover_bar
$(document).on('page:load', mouseover_bar)
