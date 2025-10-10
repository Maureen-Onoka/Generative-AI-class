"""Banking"""
walker Account(initial_balance: float){
    has balance: float;
}
total = initial_balance + acct.deposit +acct.apply_interest - acct.withdraw: float;{
    can deposit with entry;
    can withdraw with entry;
    can apply_interest with entry;
}

with entry:__main__ {
   
   
    acct.deposit(150.0);
    acct.withdraw(100.0);
    acct.apply_interest(0.15); 
    print(" final balance":{total});
}