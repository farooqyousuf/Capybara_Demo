module Paths
  def path_to(page_name)
    case page_name
      
      when /modus home page/i
        @domain + ''

     when /google page/i
       'http://google.com'

         when /modus training page/i
           @domain + '/training'
    end
  end
end

World(Paths)