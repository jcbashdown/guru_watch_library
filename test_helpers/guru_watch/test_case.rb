# -*- coding: UTF-8 -*-

module GuruWatch

  class TestCase < ActiveSupport::TestCase

    def db
      Application.instance.config.backend
    end

  end

end
