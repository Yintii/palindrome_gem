# frozen_string_literal: true

require "test_helper"

class TestYintii2Palindrome < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Yintii2Palindrome::VERSION
  end

  def test_non_palindrome
    refute "beans".palindrome?
  end

  def test_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "rACecAR".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Able was I, ere I saw Elba.".palindrome?
  end

end
