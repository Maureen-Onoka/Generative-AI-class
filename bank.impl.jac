impl Account {
    can deposit with entry {
  
        amt = args[0];
        self.initial_balance = self.initial_balance + amt;
        print("Deposited " + str(amt) + ", new balance: " + str(self.initial_balance));
    }

    can withdraw with entry {
        amt = args[0];
        if self.initial_balance >= amt {
            self.initial_balance = self.initial_balance - amt;
            print("Withdrew " + str(amt) + ", new balance: " + str(self.initial_balance));
        } else {
            print("Insufficient funds for withdrawal of " + str(amt));
        }
    }

    can apply_interest with entry {
        rate = args[0];
        interest = self.balance * rate;
        self.balance = self.balance + interest;
        print("Applied interest at rate " + str(rate) + 
              ", interest = " + str(interest) + 
              ", new balance: " + str(self.balance));
    }
}