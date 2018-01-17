require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/palindrome_check'

describe "palindrome" do
  describe "basic tests" do
    it "palindrome input with odd character count" do
      test_string = "madam"

      palindrome_check(test_string).must_equal true
    end

    it "palindrome input with even character count" do
      test_string = "redder"

      palindrome_check(test_string).must_equal true
    end

    it "not a palindrome" do
      test_string = "empty"

      palindrome_check(test_string).must_equal false
    end
  end

  # check for edge cases
  describe "edge cases" do
    # if it's a string parameter, check for empty
    it "empty string reads the same backwards or forwards" do
      test_string = ""

      palindrome_check(test_string).must_equal true
    end

    # if the parameter is an object, check for nil
    it "nil object is not a string" do
      test_string = nil

      palindrome_check(test_string).must_equal false
    end

    it "palindrome with spaces to ignore" do
      test_string = "nurses run"

      palindrome_check(test_string).must_equal true
    end

    it "palindrome with multiple spaces to ignore" do
      test_string = " pull   up "

      palindrome_check(test_string).must_equal true
    end

    it "not a palindrome, with spaces" do
      test_string = " not in  "

      palindrome_check(test_string).must_equal false
    end

    it "single character is a palindrome" do
      test_string = "A"

      palindrome_check(test_string).must_equal true
    end
  end
end
