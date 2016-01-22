require 'van'


describe Van do
  #let (:bike){double("bike")}
  it {is_expected.to respond_to(:dock_bikes_to_fix).with(1).argument}

  # let (:bike){double("bike")}
  # let (:bike){double("bike2")}
  # let (:broken_bikes){double("brokenbikes")}

  #it 'should accept some bikes' do
  it "returns a new array of broken bikes when we call dock_bikes_to_fix" do
    # let (:broken_bikes){double("brokenbikes")}
    array_elements = double("array_elements")
    array_elements = ["a","b","c"].pop
    expect(subject.dock_bikes_to_fix(array_elements)).to eq [array_elements]
  end

  it {is_expected.to respond_to(:release)}

  describe "releases the bikes" do
    station = DockingStation.new
    bike = Bike.new
    bike2 = Bike.new
    bike2.report_broken
    bike.report_broken
    station.dock_bike(bike)
    station.dock_bike(bike2)
    
     it 'the array of bikes_to fix in the van should be empty' do
      subject.dock_bikes_to_fix(station.release_to_fix)
      subject.release
      expect(subject.to_fix).to eq([])
    end
    
    it 'should include release the broken bike that was docked' do
      station0 = DockingStation.new
      bike0 = Bike.new
      bike0.report_broken
      station0.dock_bike(bike0)
      subject.dock_bikes_to_fix(station0.release_to_fix)
      expect(subject.release).to eq ([bike0])
    end

   

  end

end
