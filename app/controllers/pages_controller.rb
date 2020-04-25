# frozen_string_literal: true

# :nodoc:
class PagesController < ApplicationController
  def index; end

  def home; end

  def about; end

  def contact; end

  def jobs; end

  def sitemap
    respond_to do |format|
      format.xml { render file: 'public/sitemaps/sitemap.xml' }
      format.html { redirect_to root_url }
    end
  end
end
