# # ## Items
# #
# #
# # Item Name         |     Value         |     Shelf Life
# # ----------------  |-------------------|----------------------
# # Apple             |     10            |     5
# # Candy Bar         |     20            |     50
# # Fancy Pants       |     100           |     100
# # Fresh Salmon      |     80            |     10
# #
# #
# # ## Directions
# #
# # We'd love to know how the Value of our wares changes over time!

class MaxValue
    attr_reader :item

   def intiialize(item)
     @item = item
   end

   def value_after(item, days)
     original_day = days
     result = []
     item.each do |hash|
        name = hash.fetch(:name)
        value = hash.fetch(:value)
        shelf_life = hash.fetch(:shelf_life)
        while shelf_life > 0 && days > 0 && value > 0
            days -= 1
            shelf_life -= 1
            value -= 1
            day_difference = original_day - days
            if day_difference == 1 || day_difference == 10
                result << [name, day_difference, value]
            end
        end
       days = original_day
     end
     result
   end

end
@object = [{name: "Apple", value: 10, shelf_life: 5}, {name: "Candy", value: 20, shelf_life: 50}, {name: "Fancy Pants", value: 100, shelf_life: 100}, {name: "Salmon", value: 80, shelf_life: 10}]
o = MaxValue.new.value_after(@object, 30)
puts o
