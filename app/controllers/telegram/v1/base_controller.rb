# frozen_string_literal: true

module Telegram::V1
  class BaseController < Telegram::Bot::UpdatesController
    include Interactable
    include Matchable
    rescue_from(StandardError) { |e| Rails.logger.error(e.message) }

    alias params payload
  end
end
