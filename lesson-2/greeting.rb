def greeting(first_name, second_name, age)
  if age < 18
    "Привет, #{first_name} #{second_name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  else
    "Привет, #{first_name} #{second_name}. Самое время заняться делом!"
  end
end