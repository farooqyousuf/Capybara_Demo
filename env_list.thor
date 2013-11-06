class Set < Thor
  include Thor::Actions

  no_tasks do
    def copy_environment(new_environment)
      run("cp features/support/env.rb.#{new_environment} features/support/env.rb")
    end
  end

  desc "ess4_chrome", "Use Chrome locally on ESS4"
  def ess4_chrome
    copy_environment("ess4_chrome")
  end

  desc "ess4_firefox", "Use FireFox locally on ESS4"
  def ess4_firefox
    copy_environment("ess4_firefox")
  end

  desc "ess4_safari", "Use Safari locally on ESS4"
  def ess4_safari
    copy_environment("ess4_safari")
  end

  desc "edit", "Use Chrome locally without quitting the browser"
  def edit
    copy_environment("edit")
  end
  
  desc "ess4_poltergeist", "Use Poltergeist (headless) locally on ESS4"
  def ess4_poltergeist
    copy_environment("ess4_poltergeist")
  end
    
  desc "ess1_chrome", "Use Chrome locally on ESS1"
  def ess1_chrome
    copy_environment("ess1_chrome")
  end
  
  desc "ess1_firefox", "Use FireFox locally on ESS1"
  def ess1_firefox
    copy_environment("ess1_firefox")
  end
  
  desc "ess1_safari", "Use Safari locally on ESS1"
  def ess1_safari
    copy_environment("ess1_safari")
  end
  
  desc "ess1_poltergeist", "Use Poltergeist (headless) locally on ESS4"
  def ess1_poltergeist
    copy_environment("ess1_poltergeist")
  end
  
end