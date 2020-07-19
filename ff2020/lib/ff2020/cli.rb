class Ff2020::CLI
  
  def call
    list_qb
    list_rb
    goodbye
  end
  
  
    def list_qb
    puts "QB Tiers(1-3):"
    @tier_qb = Ff2020::Api
    @tier_qb.each.with_index(1) do |tier, i|
      puts "#{i}. #{qb.name} - #{qb.team}"
    end
  end
  
  def list_qb
    input = nil
    while input != "exit"
      puts "Please enter the QB tier you want(1-3) or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        qb_rank = @tier_qb[input.to_i-1]
        puts "#{i}. #{qb.name} - #{qb.team}"
      elsif input == "list_qb"
        list_qb
      else
        puts "Please type 1,2, or 3 for tier or exit."
      end
    end
  end
  
  
  def list_rb
    puts "RB Tiers(1-3):"
    @tier_rb = Ff2020::Api
    @tier_rb.each.with_index(1) do |tier, i|
      puts "#{i}. #{rb.name} - #{rb.team}"
    end
  end
  
  def list_rb
    input = nil
    while input != "exit"
      puts "Please enter the RB tier you want(1-3) or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        rb_rank = @tier_rb[input.to_i-1]
        puts "#{i}. #{rb.name} - #{rb.team}"
      elsif input == "list_rb"
        list_rb
      else
        puts "Please type 1,2, or 3 for tier or exit."
      end
    end
  end

    def goodbye
      puts "Come back weekly for updated rankings!"
    end
  end