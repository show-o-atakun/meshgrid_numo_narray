include Numo

RSpec.describe Meshgrid do
  
  it "has a version number" do
    expect(Meshgrid::VERSION).not_to be nil
  end

  describe "meshgrid" do
    
    context "2D NArray" do
      it "makes 2D NArray that have correct size" do
        tested_2D_grid = \
        Meshgrid.meshgrid(DFloat[0,1,2,3], DFloat[4,5,6])
        p tested_2D_grid
        expect(tested_2D_grid[0].shape).to eq([3, 4])
        expect(tested_2D_grid[1].shape).to eq([3, 4])
      end
    end

    context "3D NArray" do
      it "makes 3D NArrays that have correct size" do
        tested_3D_grid = \
        Meshgrid.meshgrid(DFloat[0,1,2], DFloat[0,1,2,3], DFloat[1,2])
        p tested_3D_grid
        expect(tested_3D_grid[0].shape).to eq([2, 3, 4])
        expect(tested_3D_grid[1].shape).to eq([2, 3, 4])
        expect(tested_3D_grid[2].shape).to eq([2, 3, 4])
      end
    end

  end
end
