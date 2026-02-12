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
    date: Time.new(2024, 03, 01),
    opensource: true,

    preview_image: "poker_playground_preview.png"
)
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
    date: Time.new(2025, 07, 07),
    opensource: false,

    preview_image: "",
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
    date: Time.new(2024, 01, 01),
    opensource: true,

    preview_image: "duelvision.jpg",
    extra_images: "duelvision_stats.jpg"
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
    date: Time.new(2024, 01, 02),
    opensource: true,

    preview_image: "",
    extra_images: ""
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
    featured: 0,
    date: Time.new(2025, 11, 04),
    opensource: true,

    preview_image: "portfoliov1.png",
    extra_images: "",
)
project.save



# Courier robot
project = Project.new(
    name: "Courier Robot",
    url_string: "courier_robot",
    tags: [ "BrickPi", "Python" ],
    github_link: "https://github.com/flavieq88/courier_robot",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "",
    active: 1,
    unreleased: 0,
    in_development: 0,
    description: "This project was developed in the context of ECSE 211 - Design Principles and Methods.
    The goal is to create a delivery robot capable of delivering packages to different areas based on given criteria.",
    featured: 1,
    date: Time.new(2025, 11, 04),
    opensource: true,

    preview_image: "",
    extra_images: ""
)
project.save

# Gamejam 2026
project = Project.new(
    name: "Gamejam 2026",
    url_string: "gamejam26",
    tags: [ "GDScript" ],
    github_link: "https://github.com/redacted24/gamejam26",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "Although the game is far from perfect, it was very fun to work on it.",
    active: 1,
    unreleased: 0,
    in_development: 0,
    description: "A small vampire survivor-esque game made during McGameJam 2026. 
    Fight your way through levels while keeping your hunger in check.",
    featured: 1,
    date: Time.new(2026, 02, 10),
    opensource: true,

    preview_image: "gamejam26_titlescreen.png",
    extra_images: "gamejam26_cutscene.png,gamejam26_example.png"
)
project.save

# Random Walk C
project = Project.new(
    name: "Random Walk in C",
    url_string: "randwalk",
    tags: [ "C", "SDL2" ],
    github_link: "https://github.com/redacted24/random_walk",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    comments: "A very small project, done as an introduction to graphics programming",
    active: 1,
    unreleased: 0,
    in_development: 0,
    description: "A simple random walk built with Simple MediaDirect Layer 2. Choose the number of walks to generate, and visualize it all with nice colors.",
    featured: 1,
    date: Time.new(2025, 12, 10),
    opensource: true,

    preview_image: "randwalk.gif",
    extra_images: ""
)
project.save
