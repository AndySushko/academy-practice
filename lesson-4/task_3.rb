START_BALANCE = 100.0
FILE_BALANCE_PATH = 'balance.txt'

def balance_machine
  balance = START_BALANCE
  if File.exist?(FILE_BALANCE_PATH)
    balance = File.read(FILE_BALANCE_PATH).to_f
  end
  puts "Выберете операцию: (D)-положить, (W)-снять, (B)-просмотр баланса, (Q)-выход"
  operation = gets.chomp

  while operation.downcase != 'q'
    if operation.downcase == 'd'
      balance = deposit(balance)
    elsif operation.downcase == 'w'
      balance = withdraw(balance)
    elsif operation.downcase == 'b'
      puts "Текущий баланс: #{balance}"
    end
    puts "Выберете операцию: (D)-положить, (W)-снять, (B)-просмотр баланса, (Q)-выход"
    operation = gets.chomp
  end

  file = File.new(FILE_BALANCE_PATH, 'w')
  file.write(balance.to_s)
  file.close
end

def deposit(balance)
  print 'Введите сумму депозита (положит. число): '
  deposit_sum = gets.to_f
  while deposit_sum < 0
    puts 'Введите положительное число'
    deposit_sum = gets.to_f
  end
  balance += deposit_sum
  puts "Новый баланс: #{balance}"
  balance
end

def withdraw(balance)
  print 'Введите сумму снятия: '
  withdraw_sum = gets.to_f
  while withdraw_sum < 0 || withdraw_sum > balance
    puts "Введите сумму от 0 до #{balance}"
    withdraw_sum = gets.to_f
  end
  balance -= withdraw_sum
  puts "Новый баланс: #{balance}"
  balance
end


balance_machine









