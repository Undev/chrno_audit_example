class Nested::Page < ActiveRecord::Base
  attr_accessible :author, :text

  audit :all
end
