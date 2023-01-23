task :create_erd do
    desc "This task creates an entity-relationship diagram in image format"

    sh "rails erd"

    puts "created erd pdf!"

    sh "convert -density 300 -colorspace RGB -background white -alpha remove -alpha off erd.pdf -resize 25% erd.png"

    puts "converted to png!"
end
