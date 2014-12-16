require 'rails_helper'

module OpenWorldServer

  RSpec.describe OwsPoint, :type => :model do

    let(:ows_point) { OwsPoint.new }

    describe "point" do
      subject { ows_point.point }

      context "when no point is set" do
        before do
          ows_point[:point] = nil
        end
        it { should be_nil }
      end

      context "when a bogus point was set" do
        before do
          ows_point[:point] = ""
        end
        it { should be_nil }
      end

      context "when WKT point is set" do
        before do
          ows_point[:point] = "POINT(1.0 1.0)"
        end
        it { should == {"type"=>"Point", "coordinates"=>[1.0, 1.0]}}
      end
    end

    describe "point=" do
      before do
        ows_point.point= value
      end
      subject { ows_point.point }

      context "when setting a valid value" do
        let(:value) { {"type"=>"Point", "coordinates"=>[1.0, 1.0]}}
        it { should == value }
      end

      context "when setting an invalid value" do
        let(:value) { "bogus value" }
        it { should == nil }
      end

      context "when setting to nil" do
        let(:value) { nil }
        it { should == nil }
      end
    end
  end

end
