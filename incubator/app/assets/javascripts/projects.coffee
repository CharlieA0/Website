mouseover_project = () ->
  $('.project_selector').mouseover ->
    $(this).css('border-width', '5px')
  $('.project_selector').mouseout ->
    $(this).css('border-width', '2px')
resize_project = () ->
  width = $('.project_selector').width()
  $('.project_selector').css({'height':width+'px'})
order_projects = () ->
  window = $('body').width()
  len = 0
  basement = document.createElement('div')
  $('.project_selector').each ->
    if window >= 768 && window < 992
      if len % 3 is 0 or len == 0
        div = document.createElement('div')
        div.className += 'col-sm-1'
        $('.row:last').append(div)
        row = document.createElement('div')
        row.className += 'row current'
        $('.background_image').append(row)
        $('.row:last').append(div)
      div = document.createElement('div')
      div.className += 'col-sm-3'
      $('.row:last').append(div)
      $(this).appendTo('.col-sm-3:last')
    else if window > 992
      if len % 3 is 0 or len == 0
        div = document.createElement('div')
        div.className += 'col-md-3'
        $('.row:last').append(div)
        row = document.createElement('div')
        row.className += 'row current'
        $('.background_image').append(row)
        $('.row:last').append(div)
      div = document.createElement('div')
      div.className += 'col-md-2'
      $('.row:last').append(div)
      $(this).appendTo('.col-md-2:last')
    else
      row = document.createElement('div')
      row.className += 'row current'
      $('.background_image').append(row)
      $('.row:last').append(div)
      div = document.createElement('div')
      div.className += 'col-xs-12'
      $('.row:last').append(div)
      $(this).appendTo('.col-xs-12:last')
    len += 1
  $('.md').remove()
  $('.row').each ->
    this.className = 'row md'
  resize_project()

ready_project = () ->
  if window.location.pathname is "/projects"
    mouseover_project()
    $(window).resize(order_projects)
    order_projects()
$ ready_project
$(document).on('page:load', ready_project)
