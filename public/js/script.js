/* Author:

*/

$(function() {
  $('#checkout').click(function(e){
    e.preventDefault()
    $(this).parent('form').submit()
  })
  $.each($('.add-to-cart'),function(i,a) {
    $(a).click(function(e){
      e.preventDefault()
      $(a).parent('form').submit()
    })
  })
  $.each($('#header-container li a'), function(i,a){
    $(a).click(function(e){
      console.log($(e.target).parent('li').siblings('li.active'))
      $(e.target).parent('li').siblings('li.active').removeClass('active')
    })
  })

  $.each($('.accordion a'),function(i,a) {
    $(a).click(function(e){
      $(e.target).parents('li').toggleClass('opened-product')
    })
  })
  if ($('.carousel').length > 0) $('.carousel').carousel()

  $('input[name=flare]').hide()
})
