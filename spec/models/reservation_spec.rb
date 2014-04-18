require 'spec_helper'

describe Reservation do
  # pending "add some examples to (or delete) #{__FILE__}"

  let(:restaurant) { Restaurant.first }

  it "Should add the reservation successfully" do
    reservation = restaurant.reservations.build(start_time: DateTime(2014,4,17,19,30), seats: 12 )
    reservation.restaurant.name.should == "The Keg"
  end

end
