require_relative "../nama_multiple"
require "test/unit"

class TestMultiple < Test::Unit::TestCase

  def test_success
    assert_equal(1, 1.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_equal(2, 2.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_equal(3, 3.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_equal(["Nama"], 5.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_equal(["Team"], 7.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_equal(["Nama", "Team", "Nama Team"], 35.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_equal(["Hello"], 10.nama_multiple(replace: {10 => "Hello"}))
  end

  def test_failure
    assert_not_equal(5, 5.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_not_equal(35, 35.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_not_equal(["Nama"], 35.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
    assert_not_equal(["Nama", "Team"], 35.nama_multiple(replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}))
  end

end