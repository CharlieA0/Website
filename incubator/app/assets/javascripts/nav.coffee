
if 'projects' in window.location.pathname
  $("#project").css("border-style", "solid, none, solid, none")
  $("#project").css("border-color", "blue")
else if 'contribute' in window.location.pathname
  $("#project")
else if 'background' in window.location.pathname
  $("#project")
else if 'users' in window.location.pathname
  $("#project")
else if 'course' in window.location.pathname
  $("#project")
else if window.location.pathname is "/"
  $("#project")
else
