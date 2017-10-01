module ApplicationHelper
	def isMenuActive(path)
		current_page?(path) ? 'active' : 'unactive'
	end
end
