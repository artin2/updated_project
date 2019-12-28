import consumer from "./consumer"

$(document).on('turbolinks:load', function () {
  var messages = $('#messages');
  var messages_to_bottom = function() {
    messages.scrollTop(messages.prop("scrollHeight"))
  };

  messages_to_bottom();

  consumer.subscriptions.create({
      channel: "ChatRoomsChannel",
      room_id: messages.data('chat-room-id')
    }, {
    connected() {
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      // Called when there's incoming data on the websocket for this channel
      messages.append(data['message'])
      messages_to_bottom()
    }
  });

  $('#new_message').submit = function(e) {
      $this = $(this)
      textarea = $this.find('#message_body')
      App.global_chat.send_message(textarea.val(), messages.data('chat-room-id'))
      textarea.val('')
      e.preventDefault()
      return false
    };
})

// let submit_messages;
// $(document).on('turbolinks:load', function () {
//   submit_messages()
// })
// submit_messages = function () {
//   $('#message_content').on('keydown', function (event) {
//     if (event.keyCode == 13) {
//       $('input').click()
//       event.target.value = ''
//       event.preventDefault()
//     }
//   })
// }
