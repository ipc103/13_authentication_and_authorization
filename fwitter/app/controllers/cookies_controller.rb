class CookiesController < ApplicationController
  def example1
    cookies[:tonys_password] = '123456'
  end

  def example2
    cookies[:expiring_data] = {value: 'This will expire in one year', expires: 1.year.from_now }
  end

  def example3
    cookies.delete(:tonys_password)
  end
end
