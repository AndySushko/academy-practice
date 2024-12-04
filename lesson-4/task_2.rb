def work_with_file(file_name)
    if File.exist?(file_name)
      file_list = File.read(file_name).split("\n")
      age = gets.chomp
      new_file = File.new('results.txt', 'a+')
      new_file.close
  
      while age != "-1"
        file_list.each do |line|
          if line.include?(age)
            File.write('results.txt', line + "\n", mode: "a")
          end
        end
        # Проверка
        new_file_list = File.read('results.txt').split("\n")
        if file_list.sort == new_file_list.sort
          break
        end
        age = gets.chomp
      end
  
    end
    'Файл не найден'
  end
  
  work_with_file('file(task_2).txt')