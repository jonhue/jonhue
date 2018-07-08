# frozen_string_literal: true

require 'rss'
Feature.destroy_all

apps = JSON.parse(File.read('data/apps.json')).map(&:deep_symbolize_keys)
apps.each do |app|
  features = app.delete :features
  app[:released_at] = app[:released_at]&.to_datetime
  a = App.find_by name: app[:name]
  if a.nil?
    a = App.create! app
  else
    a.update! app
  end
  features&.each do |feature|
    if a.features.where(title: feature[:title]).any?
      f = a.features.where(title: feature[:title]).first
      f.update! feature
    else
      f = Feature.create! feature
      f.add_to_belonger! a
    end
  end
end

repositories = []
custom_repositories = JSON.parse(File.read('data/repositories.json'))
                          .map(&:deep_symbolize_keys)
excluded_repositories = ['jonhue', 'projects', 'hello_amp', 'railsamp',
                         'app-android', 'app-ios', 'material-components-web-1']
github_repositories = HTTParty.get(
  Settings.github.repos,
  query: { per_page: 100 }
)&.parsed_response&.map { |h| h.deep_symbolize_keys if h.is_a?(Hash) }
github_repositories&.each do |github_repository|
  unless excluded_repositories.include?(github_repository[:name]) ||
         github_repository[:private] ||
         App.where(github: github_repository[:html_url]).any?
    repositories = custom_repositories.select do |r|
      r[:github] == github_repository[:html_url]
    end
    repository = repositories&.first
    repository ||= {}
    repository[:name] ||= github_repository[:name]
    repository[:description] ||= github_repository[:description]
    repository[:github] ||= github_repository[:html_url]
    if github_repository[:has_projects]
      repository[:todo] ||= "#{github_repository[:html_url]}/projects/1"\
                            '?fullscreen=true'
    end
    if github_repository[:has_wiki]
      repository[:wiki] ||= "#{github_repository[:html_url]}/wiki"
    end
    if github_repository[:has_issues]
      repository[:issues] ||= "#{github_repository[:html_url]}/issues"
    end
    repository[:open_issues] ||= github_repository[:open_issues_count]
    repository[:stars] ||= github_repository[:stargazers_count]
    repository[:watchers] ||= github_repository[:watchers_count]
    if github_repository[:homepage]&.include? 'rubygems'
      repository[:rubygems] ||= github_repository[:homepage]
    elsif github_repository[:homepage]&.include? 'npm'
      repository[:npm] ||= github_repository[:homepage]
    else
      unless github_repository[:homepage]&.include?('jonhue.me')
        repository[:url] ||= github_repository[:homepage]
      end
    end
    repository[:language] ||= github_repository[:language]
    repository[:discontinued] ||= github_repository[:archived] == true
    repository[:updated_at] ||= github_repository[:pushed_at]&.to_datetime
    repository[:created_at] ||= github_repository[:created_at]&.to_datetime
    repositories << repository
  end
end
repositories&.each do |repository|
  features = repository.delete :features
  r = Repository.find_by name: repository[:name]
  if r.nil?
    if repository[:name] && repository[:description] && repository[:github]
      r = Repository.create! repository
    end
  else
    r.update! repository
  end
  features&.each do |feature|
    if r.features.where(title: feature[:title]).any?
      f = r.features.where(title: feature[:title]).first
      f.update! feature
    else
      f = Feature.create! feature
      f.add_to_belonger! r
    end
  end
end
