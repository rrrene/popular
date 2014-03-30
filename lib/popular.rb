require "active_record"

# Namespace for classes and modules that handle friendship related tasks
#
# @author Justin Chapman
module Popular

  if defined? ActiveRecord::Base
    require "popular/extenders/popular"
    require "popular/friendship"

    # Extend ActiveRecord with extenders
    ActiveRecord::Base.extend Popular::Extenders::Popular
  end

end
