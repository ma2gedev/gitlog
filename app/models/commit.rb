class Commit < ActiveRecord::Base
  attr_accessible :author, :committed_at, :diff, :message, :sha
end
