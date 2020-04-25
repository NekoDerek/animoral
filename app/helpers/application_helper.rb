# frozen_string_literal: true

# :nodoc:
module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = 'Animoral'
    if page_title.empty?
      base_title
    else
      action_name.capitalize + ' | ' + base_title
    end
  end
end
