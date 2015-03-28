APP_ROOT = File.dirname(__FILE__)
#require File.join(APP_ROOT, 'lib', 'person')
#require File.join(APP_ROOT, 'lib', 'voter')
#require File.join(APP_ROOT, 'lib', 'candidate')
#require File.join(APP_ROOT, 'lib', 'prompter')
$:.unshift (File.join(APP_ROOT, 'lib'))

require 'prompter'
class Init
	prompter = Prompter.new
	

end