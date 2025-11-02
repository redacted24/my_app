# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

# clean slate
Project.delete_all
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

project = Project.new(
    name: "Poker Playground",
    url_string: "poker_playground",
    tags: [ "Python", "Flask", "React" ],
    github_link: "http://www.github.com/redacted24/poker",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "",
    active: 0,
    unreleased: 0,
    description: "Developed as part of a Capstone project at Marianopolis College.",
    featured: 1,
    date: "2024"
)
project.overview_image.attach(io: File.open("app/assets/images/poker_playground_preview.png"), filename: "pokerpreview.png")
project.save


Project.create!(
    name: "Chat Analyzer",
    url_string: "chat_analyzer",
    tags: [ "Python", "Java" ],
    github_link: "",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "",
    active: 0,
    unreleased: 0,
    description: "Developed a Windows desktop app that decrypts locally stored databases of a popular messaging service and
monitors user chats for potentially sensitive topics",
    featured: 1,
    date: "2025"
)

Project.create!(
    name: "Duel Vision",
    url_string: "duel_vision",
    tags: [ "React", "Websockets", "Mediapipe" ],
    github_link: "Developed a Windows desktop app that decrypts locally stored databases of a popular messaging service and
monitors user chats for potentially sensitive topics",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "",
    active: 0,
    unreleased: 0,
    description: "Integrated computer vision through MediaPipe to enable players to control and shoot spaceships with hand
movements.",
    featured: 1,
    date: "2025"
)
