module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :uuid
  end
end
