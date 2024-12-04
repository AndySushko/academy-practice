FILE_LIST_PATH = 'file.txt'

# выводит все строки файла
def index
  if File.exist?(FILE_LIST_PATH)
    puts File.read(FILE_LIST_PATH)
  else
    puts 'Файл не найден'
  end
end

# выводит строку по id
def find(id)
  if File.exist?(FILE_LIST_PATH)
    file_list = File.read(FILE_LIST_PATH).split("\n")
    if file_list.size > id && id >= 0
      puts file_list[id]
    else
      puts 'Нет такого id'
    end
  else
    puts 'Файл не найден'
  end
end

# выводит все строки по паттерну
def where(pattern)
  if File.exist?(FILE_LIST_PATH)
    file_list = File.read(FILE_LIST_PATH).split("\n")
    pattern_file_list = []
    file_list.each do |line|
      if line.include?(pattern)
        pattern_file_list << line
      end
    end
    puts pattern_file_list
  else
    puts 'Файл не найден'
  end
end

# обновляет конкретную строку файла
def update(file_name, id, text)
  if File.exist?(FILE_LIST_PATH)
    file_list = File.read(FILE_LIST_PATH).split("\n")
    if file_list.size > id && id >= 0
      file_list[id] = text
      File.write(FILE_LIST_PATH, file_list.join("\n"))
    else
      return 'Нет такого id'
    end
  else
    return 'Файл не найден'
  end
end

# удаляет строку по id
def delete(id)
  if File.exist?(FILE_LIST_PATH)
    file_list = File.read(FILE_LIST_PATH).split("\n")
    if file_list.size > id && id >= 0
      file_list.delete_at(id)
      File.write(FILE_LIST_PATH, file_list.join("\n"))
    else
      puts 'Нет такого id'
    end
  else
    puts 'Файл не найден'
  end
end

# добавляет строку в конец файла
def create(name)
  if File.exist?(FILE_LIST_PATH)
    File.write(FILE_LIST_PATH, "\n" + name, mode: "a")
  else
    puts 'Файл не найден'
  end
end










