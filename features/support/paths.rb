module Paths
  def path_to(page_name)
    case page_name
             
      when /login page/i
        @env + ''
        
      when /Assign Room Licenses page/i
        @env + '/license/ManageRoomLicenses.html'
        
      when /Manage Presenter Licenses page/i
        @env + '/license/ManagePresenterLicenses.html'
        
    end
  end
end

World(Paths)