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
# Only run if Project exists
Project.delete_all
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

# Poker playground
project = Project.new(
    name: "Poker Playground",
    url_string: "poker_playground",
    tags: [ "Python", "Flask", "React" ],
    github_link: "http://www.github.com/redacted24/poker",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "This project is my first ever \"real\" project, and I enjoyed coding it with my friend during CEGEP.",
    active: 0,
    unreleased: 0,
    description: "An interactive website to learn how to play poker, and play against different poker playstyles. Developed as part of the Capstone project at Marianopolis College.",
    in_development: 0,
    featured: 1,
    date: Time.new(2024, 03, 01)
)
project.overview_image.attach(io: File.open("app/assets/images/poker_playground_preview.png"), filename: "pokerpreview.png")
project.save

# chatanalyzer
project = Project.new(
    name: "Chat Analyzer",
    url_string: "chat_analyzer",
    tags: [ "Python", "Java" ],
    github_link: "",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "",
    active: 1,
    unreleased: 0,
    in_development: 1,
    description: "Developed a Windows desktop app that decrypts locally stored databases of a popular messaging service and
monitors user chats for potentially sensitive topics.",
    long_description: "There exists a version of the messaging service that stores the user messages locally, in an encrypted SQLite3 database.
    By finding a key stored in memory and decrypting this database, it is possible to analyze the activity of a user and
    monitor the chat messages.<br><br>
    Made with Java and its JavaFX GUI framework.",
    featured: 1,
    date: Time.new(2025, 07, 07)
)
project.save


# Duel Vision
project = Project.new(
    name: "Duel Vision",
    url_string: "duel_vision",
    tags: [ "React", "Websockets", "Mediapipe" ],
    github_link: "https://github.com/redacted24/duelvision",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "This project was done during McHacks, McGill University's hackathon. It was the most fun I've had coding in a hackathon!",
    active: 0,
    unreleased: 0,
    in_development: 0,
    description: "Integrated computer vision through MediaPipe to enable players to control and shoot spaceships with hand
movements.",
    featured: 0,
    date: Time.new(2024, 01, 01)
)
project.save


# conuhacks Sapmechanic
project = Project.new(
    name: "SAP Mechanic",
    url_string: "sapmechanic",
    tags: [ "React", "Python" ],
    github_link: "https://github.com/sivabalansm/conuhacks",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "This project was done at one of my first ever hackathons. Although we did not win anything, it was a great learning opportunity!",
    active: 0,
    unreleased: 0,
    in_development: 0,
    description: "Designed a solution for a hackathon problem involving reservation schedule optimization for an auto repair shop.",
    featured: 0,
    date: Time.new(2024, 01, 02)
)
project.save

# Portfolio
project = Project.new(
    name: "Portfolio website",
    url_string: "portfolio",
    tags: [ "Ruby on Rails", "Kamal" ],
    github_link: "https://github.com/redacted24/my_app",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "My first portfolio app ever!",
    active: 1,
    unreleased: 0,
    in_development: 0,
    description: "Designed, created and deployed a personal portfolio website.",
    featured: 1,
    date: Time.new(2025, 11, 04)
)
project.overview_image.attach(io: File.open("app/assets/images/portfoliov1.png"), filename: "portfoliov1.png")
project.save
