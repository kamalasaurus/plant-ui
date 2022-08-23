# frozen_string_literal: true

json.array! @seedboxes, partial: 'seedboxes/seedbox', as: :seedbox
