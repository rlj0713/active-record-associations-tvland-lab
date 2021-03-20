class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        array = []
        self.characters.each do |c|
            array << "#{c.actor.first_name} #{c.actor.last_name}"
        end
        array
    end
end