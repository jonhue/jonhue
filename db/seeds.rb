# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


apps = JSON.parse(File.read('data/apps.json')).map { |h| h.deep_symbolize_keys }
apps.each do |app|
    features = app.delete :features
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
custom_repositories = JSON.parse(File.read('data/repositories.json')).map { |h| h.deep_symbolize_keys }
excluded_repositories = ['jonhue', 'hello_amp', 'railsamp']
github_repositories = HTTParty.get(Settings.github.repos)&.parsed_response&.map { |h| h.deep_symbolize_keys }
github_repositories&.each do |github_repository|
    unless excluded_repositories.include?(github_repository[:name]) || github_repository[:private] || App.where(github: github_repository[:html_url]).any?
        repository = custom_repositories.select { |r| r[:name] == github_repository[:name] }&.first
        if repository.nil?
            repository = {}
        end
        repository[:name] ||= github_repository[:name]
        repository[:description] ||= github_repository[:description]
        repository[:github] ||= github_repository[:html_url]
        repository[:todo] ||= "#{github_repository[:html_url]}/projects/1?fullscreen=true" if github_repository[:has_projects]
        repository[:wiki] ||= "#{github_repository[:html_url]}/wiki" if github_repository[:has_wiki]
        repository[:issues] ||= "#{github_repository[:html_url]}/issues" if github_repository[:has_issues]
        repository[:open_issues] ||= github_repository[:open_issues_count]
        if github_repository[:homepage]&.include? 'rubygems'
            repository[:rubygems] ||= github_repository[:homepage]
        elsif github_repository[:homepage]&.include? 'npm'
            repository[:npm] ||= github_repository[:homepage]
        else
            repository[:url] ||= github_repository[:homepage]
        end
        repository[:language] ||= github_repository[:language]
        repository[:deprecated] ||= github_repository[:archived] == true
        repository[:updated_at] ||= github_repository[:pushed_at]&.to_datetime
        repository[:created_at] ||= github_repository[:created_at]&.to_datetime
        repositories << repository
    end
end
repositories&.each do |repository|
    features = repository.delete :features
    r = Repository.find_by name: repository[:name]
    if r.nil?
        r = Repository.create! repository
    else
        r.update! repository
    end
    features&.each do |feature|
        if a.features.where(title: feature[:title]).any?
            f = r.features.where(title: feature[:title]).first
            f.update! feature
        else
            f = Feature.create! feature
            f.add_to_belonger! r
        end
    end
end
