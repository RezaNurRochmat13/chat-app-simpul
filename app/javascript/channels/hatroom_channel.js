import consumer from "./consumer"

document.addEventListener("turbo:load", () => {
  const messagesContainer = document.getElementById("messages")
  if (!messagesContainer) return

  const chatroomId = messagesContainer.dataset.chatroomId

  consumer.subscriptions.create(
    { channel: "ChatroomChannel", id: chatroomId },
    {
      received(data) {
        messagesContainer.insertAdjacentHTML("beforeend", data)
      }
    }
  )
})
