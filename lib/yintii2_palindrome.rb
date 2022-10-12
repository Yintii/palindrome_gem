# frozen_string_literal: true

require_relative "yintii2_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  #returns the letters of the string
  def letters
    self.chars.select { |c| c.match(/[\w]/i)}.join
  end

  private
  def processed_content
    scan(/[\w]/i).join.downcase
  end


end
