module SavingsAccount
  INTEREST_RATE_LESS_THAN_1000 = 0.5
  INTEREST_RATE_1000_TO_5000 = 1.621
  INTEREST_RATE_MORE_THAN_5000 = 2.475
  INTEREST_CHARGED_LESS_THAN_0 = 3.213
  
  def self.interest_rate(balance)
    if balance >= 5000
      INTEREST_RATE_MORE_THAN_5000
    elsif balance >= 1000
      INTEREST_RATE_1000_TO_5000
    elsif balance >= 0
      INTEREST_RATE_LESS_THAN_1000
    else
      INTEREST_CHARGED_LESS_THAN_0
    end
  end

  def self.annual_balance_update(balance)
    interest_amount = balance * (self.interest_rate(balance) / 100)
    balance + interest_amount
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    return years
  end
end
