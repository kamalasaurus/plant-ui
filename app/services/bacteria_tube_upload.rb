# frozen_string_literal: true

require 'csv'

class BacteriaTubeUpload
  private_class_method :new
  attr_reader :errors


  PLANT_SPECIES = {
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
    "Arabidopsis_thaliana" => 'arabidopsis-thaliana-thale_cress'
  }.freeze

  BACTERIA_SPECIES = {
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
    "Agreia pratensis" => 'agreia-pratensis-agreia',
    "Pseudomonas sp (graminis)" => 'pseudomonas-graminis-pseudomonas', #uncertain
    "Subtercola pratensis" => 'agreia-pratensis-agreia',
    "Chryseobacterium" => 'chryseobacterium-sp.-chryseobacterium',
    "Frigoribacterium" => 'frigoribacterium-sp.-frigoribacterium',
    "Zoogloea ramigera" => 'zoogloea-ramigera-zoogloea',
    "Janthinobacterium" => 'janthinobacterium-sp.-janthinobacterium',
    "Pseudomonas syringae?" => 'pseudomonas-syringae-pseudomonas', #uncertain
    "Burkholderia sp." => 'burkholderia-sp.-burkholderia',
    "Pseudomonas syringae? (probably putida)" => 'pseudomonas-putida-pseudomonas', #uncertain
    "Variovorax sp." => 'variovorax-sp.-variovorax',
    "Bacillus cereus" => 'bacillus-cereus-bacillus',
    "Luteibactor rhizovicina" => 'luteibacter-rhizovicinus-luteibacter',
    "Sanguibacter" => 'sanguibacter-sp.-sanguibacter',
    "Plantibacter or Curtobacterium" => 'curtobacterium-sp.-curtobacterium',
    "Plantibacter sp." => 'plantibacter-sp.-plantibacter',
    "Agreia sp." => 'agreia-sp.-agreia',
    "Chryseobacterium sp." => 'chryseobacterium-sp.-chryseobacterium',
    "Pseudoclavibacter helvolus" => 'pseudoclavibacter-helvolus-pseudoclavibacter',
    "Arthobacter sp." => 'arthobacter-sp.-arthobacter',
    "Curtobacterium flaccumfaciens" => 'curtobacterium-flaccumfaciens-curtobacterium',
    "Agrobacterium tumefaciens" => 'agrobacterium-tumefaciens-agrobacterium',
    "Bacillus mycoides" => 'bacillus-mycoides-bacillus',
    "Frigobacterium sp 301" => 'frigoribacterium-sp.-frigoribacterium-301',
    "Rhodococcus erythropolis" => 'rhodococcus-erythropolis-rhodococcus',
    "Flavobacterium sp TB4-10" => 'flavobacterium-sp.-flavobacterium-TB4_10',
    "Nocardia corynebacteriodes" => 'nocardia-corynebacteriales-nocardia',
    "Microbacterium oxydans" => 'microbacterium-oxydans-microbacterium',
    "Flavobacterium columnare" => 'flavobacterium-columnare-columnaris', #has a common name!
    "Streptomyces chartreusis" => 'streptomyces-chartreusis-streptomyces',
    "Bacillus cereus / thuringiensis" => 'bacillus-cereus-bacillus', #uncertain
    "Bacillus megaterium" => 'bacillus-megaterium-big_beast',
    "Promicromonospora sukumoe" => 'promicromonospora-sukumoe-promicromonospora',
    "Bacillus sphaericus" => 'lysinibacillus-sphaericus-bs',
    "Pseudomonas flavescens" => 'pseudomonas-flavescens-pseudomonas',
    "Janthinobacterium sp" => 'janthinobacterium-sp.-janthinobacterium',
    "Burkholderia sp" => 'burkholderia-sp.-burkholderia',
    "Pseudomonas sp (aeruginosa type)" => 'pseudomonas-aeruginosa-pseudomonas',
    "P. viridiflava" => 'pseudomonas-viridiflava-pseudomonas',
    "Xanthomonas campestris Xcv 133" => 'xanthomonas-campestris-black_rot_of_crucifers-xcv_133',
    "Xanthomonas campestris 81-13" => 'xanthomonas-campestris-black_rot_of_crucifers-81_13',
    "Xanthomonas campestris Xcv 374" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_374',
    "Xanthomonas campestris Xcv 329" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_329',
    "Xanthomonas campestris 76-4" => 'xanthomonas-campestris-black_rot_of_cruciers-76_4',
    "Xanthomonas campestris 135" => 'xanthomonas-campestris-black_rot_of_cruciers-135',
    "Xanthomonas campestris 82-7" => 'xanthomonas-campestris-black_rot_of_cruciers-82_7',
    "Xanthomonas campestris Xcv 699" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_699',
    "Xanthomonas campestris Xcv 235" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_235',
    "Xanthomonas campestris Xcv 996" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_996',
    "Xanthomonas campestris 79 race 1" => 'xanthomonas-campestris-black_rot_of_cruciers-79_race_1',
    "Xanthomonas campestris 75-4" => 'xanthomonas-campestris-black_rot_of_cruciers-75_4',
    "Xanthomonas campestris Xcv 290" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_290',
    "Xanthomonas campestris Xcv 190" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_190',
    "Xanthomonas campestris Xcv 437" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_437',
    "Xanthomonas campestris Xcv 182" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_182',
    "Xanthomonas campestris Xcv 454" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_454',
    "Xanthomonas campestris Xcv 202" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_202',
    "Xanthomonas campestris Xcv 142" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_142',
    "Xanthomonas campestris Xcv 516" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_516',
    "Xanthomonas campestris Xcv 310" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_310',
    "Xanthomonas campestris 83-4" => 'xanthomonas-campestris-black_rot_of_cruciers-83_4',
    "Xanthomonas campestris Xcv 382" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_384',
    "Xanthomonas campestris Xcv 376" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_376',
    "Xanthomonas campestris Xcv 554" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_554',
    "Xanthomonas campestris Xcv 314" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_314',
    "Xanthomonas campestris Xcv 571" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_571',
    "Xanthomonas campestris Xcv 361" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_361',
    "Xanthomonas campestris Xcv 43" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_43',
    "Xanthomonas campestris Xcv 303" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_303',
    "Xanthomonas campestris Xcv 294" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_294',
    "Xanthomonas campestris Xcv 1928" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_1928',
    "Xanthomonas campestris Xcv 196" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_196',
    "Xanthomonas campestris Xcv 467" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_467',
    "Xanthomonas campestris Xcv 1103" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_1103',
    "Xanthomonas campestris #135 Race 3" => 'xanthomonas-campestris-black_rot_of_cruciers-#135_race_3',
    "Xanthomonas campestris Xcv 488" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_488',
    "Xanthomonas campestris Xcv 583" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_583',
    "Xanthomonas campestris Xcv 600" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_600',
    "Xanthomonas campestris 71-21" => 'xanthomonas-campestris-black_rot_of_cruciers-72_21',
    "Xanthomonas campestris 81-8" => 'xanthomonas-campestris-black_rot_of_cruciers-81_8',
    "Xanthomonas campestris Xcv 851" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_851',
    "Xanthomonas campestris Xcv 416" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_416',
    "Xanthomonas campestris Xcv 544" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_544',
    "Xanthomonas campestris 43" => 'xanthomonas-campestris-black_rot_of_cruciers-43',
    "Xanthomonas campestris Xcv 33" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_33',
    "Xanthomonas campestris Xcv 178" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_178',
    "Xanthomonas campestris Xcv 390" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_390',
    "Xanthomonas campestris 69-1" => 'xanthomonas-campestris-black_rot_of_cruciers-69_1',
    "Xanthomonas campestris Xcv 630" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_630',
    "Xanthomonas campestris Xcv 852" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_852',
    "Xanthomonas campestris Xcv 536" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_536',
    "Xanthomonas campestris Xcv 487" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_487',
    "Xanthomonas campestris Xcv 333" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_333',
    "Xanthomonas campestris Xcv 535" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_535',
    "Xanthomonas campestris Xcv 458" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_458',
    "Xanthomonas campestris Xcv 206" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_206',
    "Xanthomonas campestris Xcv 880" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_880',
    "Xanthomonas campestris Xcv 445" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_445',
    "Xanthomonas campestris Xcv 82-8" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_82_8',
    "Xanthomonas campestris Xcv 326" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_326',
    "Xanthomonas campestris Xcv 1926" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_1926',
    "Xanthomonas campestris 79" => 'xanthomonas-campestris-black_rot_of_cruciers-79',
    "Xanthomonas campestris Xcv 1929" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_1929',
    "Xanthomonas campestris Xcv 660" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_660',
    "Xanthomonas campestris Xcv 1924" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_1924',
    "Xanthomonas campestris Xcv 1925" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_1925',
    "Xanthomonas campestris 82-4" => 'xanthomonas-campestris-black_rot_of_cruciers-82_4',
    "Xanthomonas campestris Xcv 1927" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_1927',
    "Xanthomonas campestris Xcv 143" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_143',
    "Xanthomonas campestris Xcv 950" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_950',
    "Xanthomonas campestris Xcv 36" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_36',
    "Xanthomonas campestris 82-12" => 'xanthomonas-campestris-black_rot_of_cruciers-82_12',
    "Xanthomonas campestris 80-5" => 'xanthomonas-campestris-black_rot_of_cruciers-80_5',
    "Xanthomonas campestris Xcv 96" => 'xanthomonas-campestris-black_rot_of_cruciers-xcv_96',
    "Xanthomonas campestris 77-3" => 'xanthomonas-campestris-black_rot_of_cruciers-77_3',
    "Chryseobacterium sp" => 'chryseobacterium-sp.-chryseobacterium',
    "Brevibacillus sp." => 'brevibacillus-sp.-brevibacillus',
    "Sphingomonas melonis" => 'sphingomonas-melonis-sphingomonas',
    "Sphingomonas asaccharolytica" => 'sphingomonas-asaccharolytica-sphingomonas',
    "Sphingomonas panni" => 'sphingomonas-panni-sphingomonas',
    "Pseudomonas putida" => 'pseudomonas-putida-pseudomonas',
    "P. syringae pv. glycinea" => 'pseudomonas-syringae-pseudomonas-glycinea',
    "Lysinibacillus sp." => 'lysinibacillus-sp.-lysinibacillus',
    "Priestia sp." => 'priestia-sp.-priestia',
    "Microbacterium sp." => 'microbacterium-sp.-microbacterium',
    "Paenibacillus sp." => 'paenibacillus-sp.-paenibacillus',
    "AvrPpHB2 in P. syringae strains" => 'pseudomonas-syringae-pseudomonas-AvrPpHB2',
    "AvrPpHB2 in P. syringae pv glycin" => 'pseudomonas-syringae-pseudomonas-glycinea_AvrPpHB2',
    "AvrPpHB in P. syringae strains" => 'pseudomonas-syringae-pseudomonas-AvrPpHB',
    "empty pME6010 in P. syringae strains" => 'pseudomonas-syringae-pseudomonas-pME6010',
    "P. syringae tomato" => 'pseudomonas-syringae-pseudomonas-tomato',
    "P. syringae tabaci" => 'pseudomonas-syringae-pseudomonas-tabaci',
    "Sphingomonas faenia" => 'sphingomonas-faenia-sphingomonas',
    "Flavobacterium sp. TB4-10" => 'flavobacterium-sp.-flavobacterium-TB4_10',
    "P. syringae pv. alisalensis" => 'pseudomonas-syringae-pseudomonas-alisalensis',
    "P. syringae pv. aptata" => 'pseudomonas-syringae-pseudomonas-aptata',
    "P. savastanoi pv. glycinea" => 'pseudomonas-savastanoi-pseudomonas-glycinea',
    "P. cichorii" => 'pseudomonas-cichorii-pseudomonas',
    "P. syringae pv. atropurpurea" => 'pseudomonas-syringae-pseudomonas-atropurpurea',
    "P. syringae pv. coronofaciens" => 'pseudomonas-syringae-pseudomonas-coronafaciens',
    "P. syringae pv. maculicola" => 'pseudomonas-syringae-pseudomonas-maculicola',
    "P. syringae pv. persicae" => 'pseudomonas-syringae-pseudomonas-persicae',
    "P. syringae pv. phaseolicola" => 'pseudomonas-syringae-pseudomonas-phaseolicola',
    "P. syringae pv. syringae" => 'pseudomonas-syringae-pseudomonas-syringae',
    "P. syringae pv. tabaci" => 'pseudomonas-syringae-pseudomonas-tabaci',
    "P. syringae pv. tomato" => 'pseudomonas-syringae-pseudomonas-tomato',
    "P. syringae pv. Mori" => 'pseudomonas-syringae-pseudomonas-mori',
    "P. syringae striafaciens" => 'pseudomonas-syringae-pseudomonas-striafaciens',
    "P. syringae pv. Japonica" => 'pseudomonas-syringae-pseudomonas-japonica',
    "P. syringae pv. Lachrymans" => 'pseudomonas-syringae-pseudomonas-lachrymans',
    "P. syringae pv. morsprunorum" => 'pseudomonas-syringae-pseudomonas-morprunorum',
    "P. syringae pv. oryzae" => 'pseudomonas-syringae-pseudomonas-oryzae',
    "P. syringae pv. Phaseolicola" => 'pseudomonas-syringae-pseudomonas-phaseolicola',
    "P. syringae pv. Glycinea" => 'pseudomonas-syringae-pseudomonas-glycinea',
    "P. syringae pv. Actinidiae" => 'pseudomonas-syringae-pseudomonas-actinidiae',
    "P. syringae pv. Mellea" => 'pseudomonas-syringae-pseudomonas-mellea',
    "P. syringae pv. Myricae" => 'pseudomonas-syringae-pseudomonas-myricae',
    "P. syringae pv. thea" => 'pseudomonas-syringae-pseudomonas-thea',
    "P. syringae pv. pisi" => 'pseudomonas-syringae-pseudomonas-pisi',
    "P. syringae pv. sesami" => 'pseudomonas-syringae-pseudomonas-sesami',
    "P. syringae pv. Broussonetiae" => 'pseudomonas-syringae-pseudomonas-broussonetiae',
    "Priestia aryabhattai" => 'priestia-aryabhattai-priestia',
    "Massilia sp." => 'massilia-sp.-massilia',
    "Duganella sp." => 'duganella-sp.-duganella',
    "Paenarthrobacter" => 'paenarthrobacter-sp.-paenarthrobacter',
    "Acidovorax sp." => 'acidovorax-sp.-acidovorax',
    "Flavobacterium sp." => 'flavobacterium-sp.-flavobacterium',
    "Aeromicrobium sp." => 'aeromicrobium-sp.-aeromicrobium',
    "Pseudomonas fluorescence" => 'pseudomonas-fluroscence-pseudomonas',
    "Arthrobacter sp." => 'arthrobacter-sp.-arthrobacter',
    "Alkalicoccus sp." => 'alkalicoccus-sp.-alkalicoccus',
    "Pseudarthrobacter sp." => 'pseudarhrobacter-sp.-pseudarthrobacter',
    "Rathayibacter sp." => 'rathayibacter-sp.-rathayibacter',
    "Agrobacterium sp." => 'agrobacterium-sp.-agrobacterium',
    "Rhizobium sp." => 'rhizobium-sp.-rhizobia',
    "Klenkia sp." => 'klenkia-sp.-klenkia',
    "Staphylococcus sp." => 'staphylococcus-sp.-staphylococcus',
    "Novosphingobium sp." => 'novosphingobium-sp.-novosphingobium',
    "Allorhizobium sp." => 'allorhizobium-sp.-rhizobia'
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
      species, source_species, subspecies = nil
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
