class Repository < ApplicationRecord

    extend FriendlyId
    friendly_id :name, use: :slugged
    acts_as_belonger

    validates :name, presence: true
    validates :description, presence: true
    validates :github, presence: true

    belonger :features, 'Feature'
    belonger :posts, 'Post'

    def content
        Octokit.contents(self.github.tr('https://github.com/', ''), path: 'README.md', accept: 'application/vnd.github.v3.html').html_safe
    end

end
