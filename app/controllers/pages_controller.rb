class PagesController < ApplicationController
  def index
    #главная страница
  end

  def home
    #домашняя страница
  end

  def about
    @info = 'Информация о сайте'
  end

  def contact

  end

  def jobs

  end

  def sitemap
    respond_to do |format|
      format.xml {render file: 'public/sitemaps/sitemap.xml'}
      format.html {redirect_to root_url}
    end
  end
end
