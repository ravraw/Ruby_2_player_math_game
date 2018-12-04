# Question class

class Question 
  attr_accessor :answer

  def initialize() 
    @operations = ['+','-']
    @value1 =  rand(1..20)
    @value2 =  rand(1..20)
    @operator =  @operations[rand(1..@operations.length - 1)]
    @answer = @value1.to_i.send( @operator ,@value2.to_i)
  end 
    
  def generate_question 
    "What does #{@value1} #{@operator} #{@value2} ?"
  end  
  def generate_answer
    @answer
  end  

end