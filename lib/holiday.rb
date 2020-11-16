require 'pry'

  def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
  end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |a, b|
    b << supply
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |a, b|
    b.push(supply)
  
  end 

end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)

holiday_hash.each do |season, holiday|
  puts "#{season.capitalize}:"
  holiday.each do |x, y|
    x1 = x.to_s
    if x1.include?("_") == true
      array = x1.split("_")
      array.each do |z|
        z.capitalize!
      end
      new_x = array.join(" ")
    else
      new_x = x1.capitalize!
    end
    puts "  #{new_x}: #{y.join( ", " )}"
   end
  end
end 

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |symbol, array|
      if array.include?("BBQ")
        new_array << symbol
      end
    end
  end
  new_array
end








