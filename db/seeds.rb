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

# Poker playground
Project.find_or_create_by!(
  name: "Poker Playground",
  url_string: "poker_playground",
  tags: [ "Python", "Flask", "React" ],
  github_link: "",
  devpost_link: "",
  website_link: "",
  custom_link: "",
  comments: "",
  active: 0,
  unreleased: 0,
  description: "",
  featured: 1,
  date: "2025"
)
