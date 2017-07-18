$(document).on 'turbolinks:load', ->
  $('.select2-dropdown').select2 theme: 'bootstrap'
  $('.datatable').DataTable()

  $('form').on 'nested:fieldAdded', (event) ->
    console.log '-----------------'
    $('.select2-dropdown').select2 theme: 'bootstrap'
