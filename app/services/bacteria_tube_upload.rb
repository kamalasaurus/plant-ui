# frozen_string_literal: true

require 'csv'

class BacteriaTubeUpload
  private_class_method :new
  attr_reader :errors


  SPECIES = {
    "Arabidopsis thaliana" => 'arabidopsis-thaliana-thale_cress',
    "chickweed" => 'stellaria-media-chickweed',
    "mousear chickweed" => 'cerastium-vulgatum-mouse_ear_chickweed',
    "purple deadnettle" => 'lamium-purpureum-purple_deadnettle',
    "henbit" => 'lamium-amplexicaule-henbit',
    "Cardamine parviflora" => 'cardamine-parviflora-sand_bittercress',
    "dandelion" => 'taraxacum-officinale-dandelion',
    "Cerastium vulgatum" => 'cerastium-vulgatum-mouse_ear_chickweed',
    "Draba verna" => 'draba-verna-spring_whitlowgrass',
    "Lamium purporeum" => 'lamium-purpureum-purple_deadnettle',
    "pepper" => 'capsicum-annuum-bell_pepper', # not sure if black pepper
    "tomato" => 'solanum-lycopersicum-tomato',
    "Veronica" => 'veronica-sp.-speedwell',
    "vetch" => 'vicia-sativa-vetch',
    "A. lyrata" => 'arabidopsis-lyrata-lyre_leaved_rockcress',
    "A. thaliana" => 'arabidopsis-thaliana-thale_cress',
    "citrus" => 'citrus-sp.-citrus',
    "potato" => 'solanum-tuberosum-potato',
    "bean" => 'phaseolus-vulgaris-bean',
    "kidney bean" => 'phaseolus-vulgaris-kidney_bean',
    "sugar beat" => 'beta-vulgaris-sugar_beet',
    "mulberry" => 'morus-sp.-mulberry',
    "barley" => 'hordeum-vulgare-barley',
    "cucumber" => 'cucumis-sativus-cucumber',
    "radish" => 'raphanus-sativus-radish',
    "Japanese apricot" => 'prunus-mume-japanese_apricot',
    "rice" => 'oryza-sativa-rice',
    "tobacco" => 'nicotiana-tabacum-tobacco',
    "soybean" => 'glycine-max-soybean',
    "lilac" => 'syringa-vulgaris-lilac',
    "kiwi" => 'actinidia-deliciosa-kiwi',
    "bayberry" => 'myrica-pensylvanica-bayberry',
    "Chinese cabbage" => 'brassica-rapa-chinese_cabbage',
    "brown rice" => 'oryza-sativa-brown_rice',
    "tea" => 'camellia-sinensis-tea',
    "pea" => 'pisum-sativum-pea',
    "kudzu" => 'pueraria-montana-kudzu',
    "sesame" => 'sesamum-indicum-sesame',
    "spring onion" => 'allium-fistulosum-spring_onion',
    "paper mulberry" => 'broussonetia-papyrifera-paper_mulberry',
    "Arabidopsis_thaliana" => 'arabidopsis-thaliana-thale_cress',
    "Pseudomonas viridiflava" => 'pseudomonas-viridiflava-pseudomonas', # bacteria don't have common names generally
    "Pseudomonas syringae" => 'pseudomonas-syringae-pseudomonas',
    "Pseudomonas syringeae" => 'pseudomonas-syringae-pseudomonas',
    "Pseudomonas sp." => 'pseudomonas-sp.-pseudomonas',
    "Xanthomonas campestris" => 'xanthomonas-campestris-black_rot_of_crucifers',
    "Bacillus sp." => 'bacillus-sp.-bacillus',
    "Pseudomonas syringae or Pseudomonas viridiflava" => 'pseudomonas-sp.-pseudomonas',
    "Pseudomonas fluorescens" => 'pseudomonas-fluorescens',
    "Xanthomonas axonopodis" => 'xanthomonas-axonopodis-black_rot',
    "Xanthomonas sp." => 'xanthomonas-sp.-black_rot',
    "Pseudomonas sp (chloraphis)" => 'pseudomonas-chlororaphis-pseudomonas', #uncertain
    "Microbacterium sp" => 'microbacterium-sp.-microbacterium',
    "Actinobacterium" => 'actinobacterium-sp.-actinobacterium',
    "Plantibacter" => 'plantibacter-sp.-plantibacter',
    "Pseudomonas sp (fluorescens like)" => 'pseudomonas-fluorescens-pseudomonas', #uncertain
    "P. syringae" => 'pseudomonas-syringae-pseudomonas',
    "Pseudomonas sp (stutzeri)" => 'pseudomonas-stutzeri-pseudomonas',
    "Pseudomonas sp" => 'pseudomonas-sp.-pseudomonas',
    "Pseudomonas sp (fluorescens)" => 'pseudomonas-fluorescens-pseudomonas', #uncertain
    "Bacillus sp" => 'bacillus-sp.-bacillus',
    "Plantibacter sp" => 'plantibacter-sp.-plantibacter',
    "Curtobacterium sp" => 'curtobacterium-sp.-curtobacterium',
    "Curtobacterium" => 'curtobacterium-sp.-curtobacterium',
    "Pedobacter cryoconitis" => 'pedobacter-cryoconitis-pedobacter',
    "Agreia pratensis" => ,
    "Pseudomonas sp (graminis)",
    "Subtercola pratensis",
    "Chryseobacterium",
    "Frigoribacterium",
    "Zoogloea ramigera",
    "Janthinobacterium",
    "Pseudomonas syringae?",
    "Burkholderia sp.",
    "Pseudomonas syringae? (probably putida)",
    "Variovorax sp.",
    "Bacillus cereus",
    "Luteibactor rhizovicina",
    "Sanguibacter",
    "Plantibacter or Curtobacterium",
    "Plantibacter sp.",
    "Agreia sp.",
    "Chryseobacterium sp.",
    "Pseudoclavibacter helvolus",
    "Arthobacter sp.",
    "Curtobacterium flaccumfaciens",
    "Agrobacterium tumefaciens",
    "Bacillus mycoides",
    "Frigobacterium sp 301",
    "Rhodococcus erythropolis",
    "Flavobacterium sp TB4-10",
    "Nocardia corynebacteriodes",
    "Microbacterium oxydans",
    "Flavobacterium columnare",
    "Streptomyces chartreusis",
    "Bacillus cereus / thuringiensis",
    "Bacillus megaterium",
    "Promicromonospora sukumoe",
    "Bacillus sphaericus",
    "Pseudomonas flavescens",
    "Janthinobacterium sp",
    "Burkholderia sp",
    "Pseudomonas sp (aeruginosa type)",
    "P. viridiflava",
    "Xanthomonas campestris Xcv 133",
    "Xanthomonas campestris 81-13",
    "Xanthomonas campestris Xcv 374",
    "Xanthomonas campestris Xcv 329",
    "Xanthomonas campestris 76-4",
    "Xanthomonas campestris 135",
    "Xanthomonas campestris 82-7",
    "Xanthomonas campestris Xcv 699",
    "Xanthomonas campestris Xcv 235",
    "Xanthomonas campestris Xcv 996",
    "Xanthomonas campestris 79 race 1",
    "Xanthomonas campestris 75-4",
    "Xanthomonas campestris Xcv 290",
    "Xanthomonas campestris Xcv 190",
    "Xanthomonas campestris Xcv 437",
    "Xanthomonas campestris Xcv 182",
    "Xanthomonas campestris Xcv 454",
    "Xanthomonas campestris Xcv 202",
    "Xanthomonas campestris Xcv 142",
    "Xanthomonas campestris Xcv 516",
    "Xanthomonas campestris Xcv 310",
    "Xanthomonas campestris 83-4",
    "Xanthomonas campestris Xcv 382",
    "Xanthomonas campestris Xcv 376",
    "Xanthomonas campestris Xcv 554",
    "Xanthomonas campestris Xcv 314",
    "Xanthomonas campestris Xcv 571",
    "Xanthomonas campestris Xcv 361",
    "Xanthomonas campestris Xcv 43",
    "Xanthomonas campestris Xcv 303",
    "Xanthomonas campestris Xcv 294",
    "Xanthomonas campestris Xcv 1928",
    "Xanthomonas campestris Xcv 196",
    "Xanthomonas campestris Xcv 467",
    "Xanthomonas campestris Xcv 1103",
    "Xanthomonas campestris #135 Race 3",
    "Xanthomonas campestris Xcv 488",
    "Xanthomonas campestris Xcv 583",
    "Xanthomonas campestris Xcv 600",
    "Xanthomonas campestris 71-21",
    "Xanthomonas campestris 81-8",
    "Xanthomonas campestris Xcv 851",
    "Xanthomonas campestris Xcv 416",
    "Xanthomonas campestris Xcv 544",
    "Xanthomonas campestris 43",
    "Xanthomonas campestris Xcv 33",
    "Xanthomonas campestris Xcv 178",
    "Xanthomonas campestris Xcv 390",
    "Xanthomonas campestris 69-1",
    "Xanthomonas campestris Xcv 630",
    "Xanthomonas campestris Xcv 852",
    "Xanthomonas campestris Xcv 536",
    "Xanthomonas campestris Xcv 487",
    "Xanthomonas campestris Xcv 333",
    "Xanthomonas campestris Xcv 535",
    "Xanthomonas campestris Xcv 458",
    "Xanthomonas campestris Xcv 206",
    "Xanthomonas campestris Xcv 880",
    "Xanthomonas campestris Xcv 445",
    "Xanthomonas campestris Xcv 82-8",
    "Xanthomonas campestris Xcv 326",
    "Xanthomonas campestris Xcv 1926",
    "Xanthomonas campestris 79",
    "Xanthomonas campestris Xcv 1929",
    "Xanthomonas campestris Xcv 660",
    "Xanthomonas campestris Xcv 1924",
    "Xanthomonas campestris Xcv 1925",
    "Xanthomonas campestris 82-4",
    "Xanthomonas campestris Xcv 1927",
    "Xanthomonas campestris Xcv 143",
    "Xanthomonas campestris Xcv 950",
    "Xanthomonas campestris Xcv 36",
    "Xanthomonas campestris 82-12",
    "Xanthomonas campestris 80-5",
    "Xanthomonas campestris Xcv 96",
    "Xanthomonas campestris 77-3",
    "Chryseobacterium sp",
    "Brevibacillus sp.",
    "Sphingomonas melonis",
    "Sphingomonas asaccharolytica",
    "Sphingomonas panni",
    "Pseudomonas putida",
    "P. syringae pv. glycinea",
    "Lysinibacillus sp.",
    "Priestia sp.",
    "Microbacterium sp.",
    "Paenibacillus sp.",
    "AvrPpHB2 in P. syringae strains",
    "AvrPpHB2 in P. syringae pv glycin",
    "AvrPpHB in P. syringae strains",
    "empty pME6010 in P. syringae strains",
    "P. syringae tomato",
    "P. syringae tabaci",
    "Sphingomonas faenia",
    "Flavobacterium sp. TB4-10",
    "P. syringae pv. alisalensis",
    "P. syringae pv. aptata",
    "P. savastanoi pv. glycinea",
    "P. cichorii",
    "P. syringae pv. atropurpurea",
    "P. syringae pv. coronofaciens",
    "P. syringae pv. maculicola",
    "P. syringae pv. persicae",
    "P. syringae pv. phaseolicola",
    "P. syringae pv. syringae",
    "P. syringae pv. tabaci",
    "P. syringae pv. tomato",
    "P. syringae pv. Mori",
    "P. syringae striafaciens",
    "P. syringae pv. Japonica",
    "P. syringae pv. Lachrymans",
    "P. syringae pv. morsprunorum",
    "P. syringae pv. oryzae",
    "P. syringae pv. Phaseolicola",
    "P. syringae pv. Glycinea",
    "P. syringae pv. Actinidiae",
    "P. syringae pv. Mellea",
    "P. syringae pv. Myricae",
    "P. syringae pv. thea",
    "P. syringae pv. pisi",
    "P. syringae pv. sesami",
    "P. syringae pv. Broussonetiae",
    "Priestia aryabhattai",
    "Massilia sp.",
    "Duganella sp.",
    "Paenarthrobacter",
    "Acidovorax sp.",
    "Flavobacterium sp.",
    "Aeromicrobium sp.",
    "Pseudomonas fluorescence",
    "Arthrobacter sp.",
    "Alkalicoccus sp.",
    "Pseudarthrobacter sp.",
    "Rathayibacter sp.",
    "Agrobacterium sp.",
    "Rhizobium sp.",
    "Klenkia sp.",
    "Staphylococcus sp.",
    "Novosphingobium sp.",
    "Allorhizobium sp."
  }.freeze

  def initialize(file)
    @errors = []
    @file = file
    copy
    parse
  end

  def self.parse(file)
    new(file)
  end

  def success?
    @errors.empty?
  end

  private

  def check(str)
    is_nil = [nil, 'empty', ' ', 'empy', 'failed', /^\?+$/].any? do |test|
      if test.is_a? Regexp
        str =~ test
      else
        str == test
      end
    end
    str == is_nil ? nil : str
  end

  def copy
    return if Rails.env.production?

    name = "#{DateTime.now.strftime '%Y_%m_%d'}_upload.csv"
    File.binwrite(Rails.root.join('public', 'uploads', name), @file)
  end

  def create_or_update_species(h)
    genus, species = SPECIES[h[:species]].split('-')
    Species.upsert({
                     genus:,
                     species:
                   }, unique_by: %i[genus species])
    Species.find_by(genus:, species:)
  end

  # def create_or_update_seedbox(h)
  #   Seedbox.upsert({
  #                    name: h[:seedbox]
  #                  }, unique_by: :name)
  #   Seedbox.find_by(name: h[:seedbox])
  # end

  # def create_or_update_population(h)
  #   Population.upsert({
  #                       population_name: h[:popid1].upcase,
  #                       subpopulation: h[:popid2].upcase
  #                     }, unique_by: %i[population_name subpopulation])
  #   Population.find_by(population_name: h[:popid1], subpopulation: h[:popid2])
  # end

  # def create_or_update_accession(h, population)
  #   Accession.upsert({
  #                      accession_number: h[:accid].to_i,
  #                      population_id: population.id
  #                    }, unique_by: %i[population_id accession_number])
  #   Accession.find_by(population_id: population.id, accession_number: h[:accid])
  # end

  # def create_or_update_seed(h, accession, species)
  #   Seed.upsert({
  #                 species_id: species.id,
  #                 generation: h[:generation],
  #                 accession_id: accession.id
  #               }, unique_by: :uniqueness_index)
  #   Seed.find_by(
  #     species_id: species.id,
  #     generation: h[:generation],
  #     accession_id: accession.id
  #   )
  # end

  # def create_or_update_tube(h, seed, seedbox)
  #   Tube.upsert({
  #                 seed_id: seed.id,
  #                 seedbox_id: seedbox.id,
  #                 position: h[:position],
  #                 volume: h[:quantity_ml],
  #                 count: check(h[:quantity_seeds])
  #               }, unique_by: %i[seedbox_id position])
  #   Tube.find_by(
  #     seed_id: seed.id,
  #     seedbox_id: seedbox.id,
  #     position: h[:position],
  #     volume: h[:quantity_ml],
  #     count: check(h[:quantity_seeds])
  #   )
  # end

  def parse
    CSV.parse(@file, headers: true, header_converters: %i[downcase symbol]) do |row|
      bacteria_population, bacteria_location, bacteria_accession, \
      bacteria_tube, bacteria_box, freezer_rack, freezer, \
      species, source_species = nil
      h = row.to_h
      ActiveRecord::Base.transaction do
        species = create_or_update_species(h)
        source_species = create_or_update_source_species(h)
        freezer = create_or_update_freezer(h)
        freezer_rack = create_or_update_freezer_rack(h, freezer)
        bacteria_box = create_or_update_bacteria_box(h, freezer_rack)
        bacteria_population = create_or_update_bacteria_population(h)
        bacteria_location = create_or_update_bacteria_location(h, bacteria_population)
        bacteria_accession = create_or_update_bacteria_accession(h, bacteria_populationk \
          species, source_species)
        bacteria_tube = create_or_update_bacteria_tube(h, bacteria_accession)
      rescue StandardError => e
        puts e
        puts h
        @errors.push([e, row])
      end
    end
  end
end
