module Searchkick
  class ReindexV2Job < ActiveJob::Base
    queue_as :searchkick

    def perform(record)
      model = record.class
      index = model.searchkick_index
      index.store record
    end

  end
end
