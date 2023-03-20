# frozen_string_literal: true

class BacteriaAccessionResolver < BaseResolver
  type [Types::BacteriaAccessionType], null: false

  scope do
    if object.blank?
      BacteriaAccession.all
    elsif object.respond_to?(:bacteria_accessions)
      object.bacteria_accessions
    else
      []
    end
  end

  # option(:name, type: String, description: 'select by name') do |scope, value|
  #   scope.select { |bacteria_population| bacteria_population.name == value.upcase }
  # end

  # option(:names, type: [String], description: 'select by multiple names') do |scope, value|
  #   scope.select { |bacteria_population| value.map(&:upcase).include? bacteria_population.name }
  # end
end
