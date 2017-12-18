class HomeController < ApplicationController
  def index

  end

  def hello
    @name = params[:name]
  end

  def lotto
    num = [*1..45]
    @rnum = num.sample(6).sort
  end

  def lunch
    menu = ["오징어", "탕수육", "삼겹살"]
    @choice = menu.sample
  end

  def search
    
  end

end
