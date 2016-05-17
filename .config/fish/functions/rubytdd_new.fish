function rubytdd_new
  git clone git@github.com:bobishh/tdd_setup.git $argv
  cd $argv
  rm ./lib/new_class.rb ./spec/new_class_spec.rb
  set camel_case_name (camel_case $argv)
  echo "
class $camel_case_name
  def initialize
  end
end" > ./lib/$argv.rb
  echo "
require 'spec_helper'
require '$argv'
  describe $camel_case_name do
    it \"exists\" do
      expect($camel_case_name.new).to be_kind_of  $camel_case_name
    end
  end" > ./spec/$argv\_spec.rb
  bundle
end
