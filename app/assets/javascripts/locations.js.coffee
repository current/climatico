$ ->
  x = $('#location')

  getLocation = ->
    console.log(navigator.geolocation)
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition(showPosition)
    else
      x.html("Geolocation is not supported")

  showPosition = (position) ->
    console.log("Position: ", position)
    x.html("Lat: " + position.coords.latitude + " <br /> Long: " + position.coords.longitude)

  getLocation()
