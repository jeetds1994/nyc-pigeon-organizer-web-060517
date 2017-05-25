def nyc_pigeon_organizer(data)
  # write your code here!
  nameList = []
  answer = {}
  data.each do |key, types|
    types.each do |colors, nameArr|
      nameArr.each do |name|
        nameList.push(name)
      end
    end
  end

  nameList.each do |name|
    answer[name] = Hash.new { |h, k| h[k] = []}
    data.each do |key, types|
      types.each do |colors, nameArr|

        puts "#{name}, #{key}, #{colors}"
        if data[key][colors].include?(name)

          answer[name][key].push(colors.to_s)

        end
      end
    end
  end

  answer
end
