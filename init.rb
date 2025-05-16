Redmine::Plugin.register :redmine_shared_api do
  name 'Redmine Shared API'
  author 'chaunt'
  description 'This is a plugin share API for Redmine' 
  version '1.0.0'
  url 'https://github.com/chaunt1/redmine_shared_api'
  author_url 'https://www.chaunt.dev'
  requires_redmine :version_or_higher => '6.0.3'
end

Rails.configuration.to_prepare do
  require_dependency File.expand_path('../lib/issue_patch', __FILE__)
end
