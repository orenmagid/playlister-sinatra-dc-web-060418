module Slugifiable
  module InstanceMethods
    def slug
      self.name.gsub(/\s+/, '-').downcase
    end
  end

  module ClassMethods
    def find_by_slug(slug)

      # self.find_by(name: slug.gsub(/-+/, ' '))
      self.where('lower(name) = ?', slug.gsub(/-+/, ' ')).first
    end
  end
end
