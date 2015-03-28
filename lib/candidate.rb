class Candidate
	attr_reader :candidate_array

	def initialize
		candidate_file = File.readlines(File.dirname(__FILE__) + '/candidate.txt')
		#@candidates = candidate_file.read.to_s
		@candidate_array = candidate_file
		#candidate_file.close
	end

	def candidate_list
		@candidate_array.each { |candidate| candidate  }
	end
	

end