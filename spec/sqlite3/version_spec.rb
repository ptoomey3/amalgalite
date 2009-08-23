require File.expand_path(File.join(File.dirname(__FILE__),"..","spec_helper.rb"))
require 'amalgalite/sqlite3/version'

describe "Amalgalite::SQLite3::Version" do
  it "should have the sqlite3 version" do
    Amalgalite::SQLite3::VERSION.should =~ /\d\.\d\.\d/
    Amalgalite::SQLite3::Version.to_s.should =~ /\d\.\d\.\d/
    Amalgalite::SQLite3::Version.to_i.should eql(3006017)
    Amalgalite::SQLite3::Version::MAJOR.should eql(3)
    Amalgalite::SQLite3::Version::MINOR.should eql(6)
    Amalgalite::SQLite3::Version::RELEASE.should eql(17)
    Amalgalite::SQLite3::Version.to_a.should have(3).items
    Amalgalite::SQLite3::Version.version_string.should == "3.6.17"
  end
end
