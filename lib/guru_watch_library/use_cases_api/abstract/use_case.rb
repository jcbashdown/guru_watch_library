# -*- coding: UTF-8 -*-

module UseCases

  class UseCase

    include ::Entities

    #db will now be passed in
    attr_accessor :request, :db

    def initialize(request_or_hash = { }, db=nil)
      @db = db || self.db
      if request_or_hash.is_a?(Hash)
        self.request = Request.new(request_or_hash)
      else
        self.request = request_or_hash
      end
    end

    private

    def self.db
      #use default db, override either per use or in application initializer. 
      #Otherwise will use marshall backed memory store
      @db ||= Application.instance.config.backend
    end

  end

end
