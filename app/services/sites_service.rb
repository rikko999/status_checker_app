class SitesService
  def self.call
    Site.all.each(&:check_state)
  end
end
