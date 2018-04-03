jQuery(document).on 'turbolinks:load', ->


  patients = $('#patients')
  count = patients.find('.count > span')

  recount = -> count.text patients.find('.nested-fields').size()

  patients.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  patients.on 'cocoon:after-insert', (e, added_el) ->
  added_el.effect('highlight', {}, 500)

  patients.on 'cocoon:before-remove', (e, el_to_remove) ->
  $(this).data('remove-timeout', 1000)
  el_to_remove.fadeOut(1000)

  patients.on 'cocoon:after-remove', (e, removed_el) ->
  recount()




  accompanyingpeople = $('#accompanyingpeople')
  count = accompanyingpeople.find('.count > span')

  recount = -> count.text accompanyingpeople.find('.nested-fields').size()

  accompanyingpeople.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  accompanyingpeople.on 'cocoon:after-insert', (e, added_el) ->
  added_el.effect('highlight', {}, 500)

  accompanyingpeople.on 'cocoon:before-remove', (e, el_to_remove) ->
  $(this).data('remove-timeout', 1000)
  el_to_remove.fadeOut(1000)

  accompanyingpeople.on 'cocoon:after-remove', (e, removed_el) ->
  recount()



  contactpeople = $('#contactpeople')
  count = contactpeople.find('.count > span')

  recount = -> count.text contactpeople.find('.nested-fields').size()

  contactpeople.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  contactpeople.on 'cocoon:after-insert', (e, added_el) ->
  added_el.effect('highlight', {}, 500)

  contactpeople.on 'cocoon:before-remove', (e, el_to_remove) ->
  $(this).data('remove-timeout', 1000)
  el_to_remove.fadeOut(1000)

  contactpeople.on 'cocoon:after-remove', (e, removed_el) ->
  recount()