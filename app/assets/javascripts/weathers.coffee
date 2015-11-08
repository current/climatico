$(document).on 'page:change', ->

  if navigator.geolocation
    navigator.geolocation.getCurrentPosition (pos) ->
      coord = pos.coords

      $.ajax
        url: '/forecast'
        data: coord
      .success (data) ->
        $('#loading').html(data)

  else
    console.log 'Geolocation is not supported'
