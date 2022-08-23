# frozen_string_literal: true

json.array! @populations, partial: 'populations/population', as: :population
