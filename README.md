# Rails Chat App

A simple real-time chat application built with **Ruby on Rails 8**, **ActionCable**, **Tailwind CSS**, and **Hotwire/Turbo**.
Includes **service layer architecture**, **unit & integration tests**, and modern styling.

---

## 🌟 Features

* Create **chatrooms**
* Post **messages** with real-time updates
* Styled with **Tailwind CSS**
* Responsive and eye-catching UI
* **Service layer** for clean business logic
* **Unit tests** (RSpec + FactoryBot + Faker)
* **Integration tests** for controller & service
* Ready for **deployment online** (Fly.io or similar)

---

## 🛠 Technology Stack

* **Backend**: Ruby on Rails 8
* **Frontend**: Hotwire / Turbo / Tailwind CSS
* **Real-time**: ActionCable
* **Database**: PostgreSQL
* **Testing**: RSpec + FactoryBot + Faker
* **Deployment**: Fly.io (or any Rails host)

---

## 💾 Installation

1. Clone the repository:

```bash
git clone https://github.com/username/rails-chat-app.git
cd rails-chat-app
```

2. Install dependencies:

```bash
bundle install
yarn install # if using JS bundler
```

3. Setup database:

```bash
cd infra
docker compose up -d
rails db:create
rails db:migrate
```

4. Install Tailwind (if not already installed):

```bash
bin/rails tailwindcss:install
```

---

## 🚀 Running the App

Start Rails server:

```bash
bin/dev
```

Open browser and go to:

```
http://localhost:3000
```

---

## 💬 Testing

Run **unit and integration tests**:

```bash
bundle exec rspec
```

* Includes **ChatroomService** and **MessageService** tests
* FactoryBot + Faker used for test data

---

## 🖌 Styling

* Tailwind CSS used for responsive and modern UI
* Chatrooms list, chat bubbles, and message forms styled for clean look
* Optional: differentiate sender vs receiver messages with colors

---

## 📦 Folder Structure (Highlights)

```
app/
  controllers/
    chatrooms_controller.rb
    messages_controller.rb
  models/
    chatroom.rb
    message.rb
  services/
    chatroom_service.rb
    message_service.rb
  views/
    chatrooms/
      index.html.erb
      show.html.erb
    messages/
      _message.html.erb
```

---

## 🌐 Deployment

* You can deploy on **Fly.io**, **Render**, or any Rails hosting
* Make sure **PostgreSQL** and **Redis** (for ActionCable) are configured

---

## 📌 Notes

* Use **service layer** for business logic (ChatroomService & MessageService)
* Tailwind classes are used extensively for UI
* Turbo streams / ActionCable handle **real-time message updates**
* Tests ensure reliability and maintainability
