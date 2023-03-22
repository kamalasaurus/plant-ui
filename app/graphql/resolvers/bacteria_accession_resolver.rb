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

  option(:sample_identity, type: String, description: 'select by sample identity fragment') do |scope, value|
    scope.where("sample_identity like '%#{value}%'")
  end

  option(:comment, type: String, description: 'select by comment fragment') do |scope, value|
    scope.where("comment like '%#{value}%'")
  end

  option(:date_collected, type: String, description: 'select by date collected fragment') do |scope, value|
    scope.where("date_collected like '%#{value}%'")
  end

  option(:organ_tissue, type: String, description: 'select by organ tissue fragment') do |scope, value|
    scope.where("organ_tissue like '%#{value}%'")
  end

  option(:bacteria_population_id, type: Integer, description: 'select by bacteria population id') do |scope, value|
    scope.where(bacteria_population_id: value)
  end

  option(:bacteria_population_ids, type: [Integer], description: 'select by multiple bacteria population ids') do |scope, value|
    scope.where(bacteria_population_id: value)
  end

  option(:bacteria_population_name, type: String, description: 'select by bacteria population name') do |scope, value|
    scope.includes(:bacteria_population).where("bacteria_population.name is #{value}")
  end

  option(:bacteria_population_names, type: [String], description: 'select by multiple bacteria population names') do |scope, value|
    scope.includes(:bacteria_population).where("bacteria_population.name in #{value}")
  end

  option(:species_id, type: Integer, description: 'select by species id') do |scope, value|
    scope.where(species_id: value)
  end

  option(:species_ids, type: [Integer], description: 'select by multiple species ids') do |scope, value|
    scope.where(species_id: value)
  end

  option(:species_species, type: String, description: 'select by species species') do |scope, value|
    scope.includes(:species).where("species.species is #{value}")
  end

  option(:species_specieses, type: [String], description: 'select by multiple species specieses') do |scope, value|
    scope.includes(:species).where("species.species in #{value}")
  end

  option(:species_genus, type: String, description: 'select by species genus') do |scope, value|
    scope.includes(:species).where("species.genus is #{value}")
  end

  option(:species_genuses, type: [String], description: 'select by multiple species genuses') do |scope, value|
    scope.includes(:species).where("species.genus in #{value}")
  end

  option(:source_species_id, type: Integer, description: 'select by source species id') do |scope, value|
    scope.where(source_species_id: value)
  end

  option(:source_species_ids, type: [Integer], description: 'select by multiple source species ids') do |scope, value|
    scope.where(source_species_id: value)
  end

  option(:source_species_species, type: String, description: 'select by source species species') do |scope, value|
    scope.includes(:source_species).where("source_species.species is #{value}")
  end

  option(:source_species_specieses, type: [String], description: 'select by multiple source species specieses') do |scope, value|
    scope.includes(:source_species).where("source_species.species in #{value}")
  end

  option(:source_species_genus, type: String, description: 'select by source species genus') do |scope, value|
    scope.includes(:source_species).where("source_species.genus is #{value}")
  end

  option(:source_species_genuses, type: [String], description: 'select by multiple source species genuses') do |scope, value|
    scope.includes(:source_species).where("source_species.genus in #{value}")
  end

  option(:wild, type: Boolean, description: 'select by wild or lab') do |scope, value|
    scope.where(wild: value)
  end

end
