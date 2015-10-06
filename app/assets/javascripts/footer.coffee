fixFooter = () ->
  footer_height = $('footer').height()
  $('main').css('padding-bottom', footer_height + 60)

$ ->
  $(window).resize ->
    fixFooter()
  fixFooter()