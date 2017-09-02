$(document).on 'turbolinks:load', ->
  $('.select2-dropdown').select2 theme: 'bootstrap'
  $('.datatable').DataTable()

  $('form').on 'nested:fieldAdded', (event) ->
    $('.select2-dropdown').select2
      theme: 'bootstrap'
      maximumSelectionSize: 5
      minimumInputLength: 3
