$(document).on 'keypress', '[data-behavior~=talkroom_speaker]', (event) ->
  # エンターキーが押されたらサーバへメッセージを送信する
  if event.keyCode is 13
    App.talkroom.speak event.target.value
    event.target.value = ""
    event.preventDefault()

App.talkroom = App.cable.subscriptions.create "TalkroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert data['message']
    $('#message').append data['message']
    # Called when there's incoming data on the websocket for this channel

  speak: (message)->
    @perform 'speak', message: message
