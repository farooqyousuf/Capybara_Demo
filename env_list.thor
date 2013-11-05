class Mac < Thor
  include Thor::Actions

  no_tasks do
    def copy_environment(new_environment)
      run("cp features/support/env.rb.#{new_environment} features/support/env.rb")
    end
  end

  desc "chrome", "Use Chrome locally"
  def chrome
    copy_environment("chrome")
  end

  desc "firefox", "Use FireFox locally"
  def firefox
    copy_environment("firefox")
  end

  desc "safari", "Use Safari locally"
  def safari
    copy_environment("safari")
  end

  desc "headless", "Use HEADLESS locally"
  def headless
    copy_environment("headless")
  end

  desc "edit", "Use Chrome locally without quitting the browser"
  def edit
    copy_environment("edit")
  end
end