class UtilitiesController < ApplicationController
  def index
  end

  def pick_lucky_numbers
    # 45개의 숫자 중에서 6개를 뽑는다.
    
    numbers = (1..45).to_a
    random_numbers = numbers.sample 6
    @lucky_numbers = random_numbers.sort
    # @lucky_numbers = (1..45).to_a.sample(6).sort
  end

  def get_stock_info
    # require 'stock_quote', 쓰지 않다도 rails가 알아서 인식
    # print '원하는 NASDAQ 주식의 심볼을 입력하세요: '
  end
  
  def show_stock_info
    input = # 사용자가 get_stock_info 에서 보낸 Data
    stock = StockQuote::Stock.quote(input)
    puts stock.company_name
    puts stock.latest_price
  end
end
