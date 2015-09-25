class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    if params[:name].blank? and params[:name].blank?
      @text = "You are nothing!"
    else
      @text = params[:name] + " is so " + params[:adjective]
    end
  end

  def age
  end

  def person
    input = Person.new params[:name], params[:age]
    @inputIntro = input.introduce
    @inputBirthYear = input.birth_year
    @inputNickname = input.nickname
  end
end
