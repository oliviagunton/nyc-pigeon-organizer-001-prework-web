def nyc_pigeon_organizer(data)
  pigeons_by_name = {}

  data.each do |attribute, attribute_vals_dict|
    attribute_vals_dict.each do |attribute_val, names_list|

      attribute_val_string = attribute_val.to_s

      names_list.each do |name|

        #Check if we already have an entry for this particular pigeon
        if pigeons_by_name[name]
          #Check if we already have a value for this attribute
          if pigeons_by_name[name][attribute]
            pigeons_by_name[name][attribute] << attribute_val_string
          else
            pigeons_by_name[name][attribute] = [attribute_val_string]
          end

        else
          pigeons_by_name[name] = {attribute => [attribute_val_string]}
        end
      end
    end
  end

  pigeons_by_name
end

# ===========Sample input===============
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# ==============Sample output===============
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
