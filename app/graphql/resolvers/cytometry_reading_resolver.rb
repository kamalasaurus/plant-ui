class CytometryReadingResolver < BaseResolver
  type [Types::CytometryReadingType], null: false

  scope { CytometryReading.all }

  option :mean_f2, type: Float, description: 'select by mean f2' do |scope, value|
    scope.where(mean_f2: value)
  end

  option :mean_f2s, type: [Float], description: 'select by multiple mean f2s' do |scope, value|
    scope.where(mean_f2: value)
  end

  option :mean_f2_range, type: FloatFilter, description: 'use gt and lt to define the bounds of the mean f2' do |scope, value|
    scope.where("mean_f2 between #{gt} and #{lt}")
  end

  option :minimum_peak, type: Integer, description: 'select by minimum peak' do |scope, value|
    scope.where(minimum_peak: value)
  end

  option :minimum_peaks, type: [Integer], description: 'select by multiple minimum peaks' do |scope, value|
    scope.where(minimum_peak: value)
  end

  option :minimum_peak_range, type: IntegerFilter, description: 'use gt and lt to define the bounds of the minimum peak' do |scope, value|
    scope.where("minimum peak between #{gt} and #{lt}")
  end

  option(:peak_pattern, type: [Integer], description: 'select if peak pattern matches') do |scope, value|
    scope.select { |cyt| !(cyt.peak_pattern & value).empty? }
  end

  option(:chromosome_count, type: [Integer], description: 'select if chromosome count matches') do |scope, value|
    scope.select { |cyt| !(cyt.chromosome_count & value).empty? }
  end

  option(:chromosome_count_certain, type: Boolean, description: 'select if chromosome count is certain') do |scope, value|
    scope.where(chromosome_count_certain: value)
  end

  option(:accession_id, type: Integer, description: 'select by accession id') do |scope, value|
    scope.where(accession_id: value)
  end

  option(:accession_ids, type: [Integer], description: 'select by multiple accession ids') do |scope, value|
    scope.where(accession_id: value)
  end
  option(:accession_name, type: String, description: 'select by accession name') do |scope, value|
    scope.select { |cyt| cyt.accession.name == value.upcase }
  end

  option(:accession_names, type: [String], description: 'select by multiple accession names') do |scope, value|
    scope.select { |cyt| value.map(&:upcase).include? cyt.accession.name }
  end
end