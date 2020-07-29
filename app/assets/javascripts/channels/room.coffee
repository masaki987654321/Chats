App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    alert("connection is starting")
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert data['room_name']
    console.log(data)
    # Called when there's incoming data on the websocket for this channel

  create: ->
    @perform 'create'
