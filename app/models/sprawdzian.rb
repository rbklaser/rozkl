class Sprawdzian < ActiveRecord::Base
	cattr_reader :per_page
	@@per_page=10
    has_attached_file :document
    
    #def self.multiSearch(text)
#		text = "%"+text+"%"
#		#Sprawdzian.where("nazwa like ? OR klasa like ?", text, text)
#		Sprawdzian.find(3)
#    end
end
