class HomeController < ApplicationController
  
  before_filter :load_next_pays
  before_filter :load_next_receivables
  
  def index
    
  end  
  
private
  def load_next_pays
    @next_pays = Pay.find(:all, 
      :conditions => ["maturity between ? and ?", Time.now, Time.now.next_month])
  end
  
  def load_next_receivables
    @next_receivables = Receivable.find(:all, 
      :conditions => ["maturity between ? and ?", Time.now, Time.now.next_month])
  end
  
end
