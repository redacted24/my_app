class Project < ApplicationRecord
  # @@client = Octokit::Client.new(access_token: ENV["GITHUB_PAT"])
  attr_accessor :commits
  # after_create :get_repo_info
  has_one_attached :overview_image
  has_many_attached :more_overview_images

  # def get_repo_info
  #   if @commits == nil
  #     @commits = 0
  #     link = self.github_link
  #     puts link
  #     if link != ""
  #       short_github_link = link.split("com/")[1]
  #       stats = @@client.contributors_stats(short_github_link)
  #       puts stats
  #       if stats != nil
  #         # Filter stats for my stats
  #         for stat in stats
  #           @commits += stat.total
  #         end
  #       end
  #     end
  #     @commits
  #   else
  #     @commits
  #   end
  # end
end
