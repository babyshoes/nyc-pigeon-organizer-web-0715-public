def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |trait, hash|
    hash.each do |specifics, names|
      names.each do |name|
        pigeon_hash[name] ||= {}
        pigeon_hash[name][trait] ||= [] #unless pigeon_hash[name].include? trait
        pigeon_hash[name][trait] << specifics.to_s
      end
    end
  end
  pigeon_hash
end
