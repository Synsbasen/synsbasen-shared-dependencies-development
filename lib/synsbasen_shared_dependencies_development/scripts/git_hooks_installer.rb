require 'fileutils'

module SynsbasenSharedDependenciesDevelopment
  module Scripts
    module GitHooksInstaller
      HOOKS_DIR = File.expand_path('../git_hooks', __dir__)
      GIT_HOOKS_DIR = File.expand_path('.git/hooks', Dir.pwd)

      def self.install
        Dir.mkdir(GIT_HOOKS_DIR) unless Dir.exist?(GIT_HOOKS_DIR)

        Dir.glob("#{HOOKS_DIR}/*").each do |hook|
          hook_name = File.basename(hook)
          target = File.join(GIT_HOOKS_DIR, hook_name)

          FileUtils.cp(hook, target)
          FileUtils.chmod('+x', target) # Make the hook executable
          puts "Installed Git hook: #{hook_name}"
        end
      end
    end
  end
end

# Run the installer if executed directly
SynsbasenSharedDependenciesDevelopment::Scripts::GitHooksInstaller.install
