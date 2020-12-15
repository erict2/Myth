module DatatablesHelper

    def attributes_for(model, match, &block)
        model.attributes.each do |key, value|
          if key.to_s.include?(match)
            concat(capture(key, value, &block))
          end
        end
      end 
end


