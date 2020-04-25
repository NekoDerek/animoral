# frozen_string_literal: true

# :nodoc:
module PagesHelper
  LINKS = [{ 'link_name': 'About', 'path': 'about' },
           { 'link_name': 'Contact', 'path': 'contact' }].freeze

  def main
    link_to 'Animoral', root_path
  end

  def derek
    link_to 'Эдуард Навальный', "https://derek2.ru"
  end
end
