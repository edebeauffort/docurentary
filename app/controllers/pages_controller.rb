class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @gadgets = Gadget.all
  end






end
