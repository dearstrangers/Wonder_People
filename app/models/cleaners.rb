module Cleaners
  def self.table_name_prefix
    'cleaners_' #cleaners instead of cleaner because of referencing admins namespace in bookazon, assumed convention
  end
end
