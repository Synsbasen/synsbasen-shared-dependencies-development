namespace :git_hooks do
  desc 'Install Git hooks'
  task :install do
    require_relative '../synsbasen_shared_dependencies_development/scripts/git_hooks_installer'
    SynsbasenSharedDependenciesDevelopment::Scripts::GitHooksInstaller.install
  end
end
