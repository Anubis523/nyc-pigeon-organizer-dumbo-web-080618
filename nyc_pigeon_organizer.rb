def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_data = {}
  main_keys = data.keys
  main_keys.each{|main_key|
    data[main_key].each{|sub_key, members|
      members.each{|member|
        if (pigeon_data.key?(member) == false)
          pigeon_data[member] = {}
          pigeon_data[member].store(main_key, [sub_key.to_s])
        else
          if (pigeon_data[member][main_key] != nil)
            pigeon_data[member][main_key].push(sub_key.to_s)
          else
            pigeon_data[member][main_key] = [sub_key.to_s]
            # pigeon_data[member][main_key].push(sub_key.to_s)
          end
        end
      }
    }
  }
  pigeon_data
end