module Paths
  def path_to(page_name)
    case page_name
             
      when /ess4 login page/i
           @ess4 + ''
    end
  end
end

World(Paths)