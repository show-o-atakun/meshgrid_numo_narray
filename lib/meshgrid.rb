require "meshgrid/version"
require "numo/narray"

module Meshgrid
  
  class Error < StandardError; end 

  module_function

  # Arg narray is just Array: But it should contain NArrays.
  def meshgrid(*narray, indexing: false)
    len = narray.length

    org_ary = narray.map {|nar| nar.to_a }
    made_ary = Array.new(len)

    if len == 2 then
      made_ary[0] = srange(narray, 1).map { org_ary[0] }
      made_ary[1] = srange(narray, 0).map { org_ary[1] }
      
      if indexing
        made_ary[0] = made_ary[0].transpose  
      else
        made_ary[1] = made_ary[1].transpose  
      end

    elsif narray.length == 3 then
      made_ary[0] = srange(narray, 2).map { |z|
        srange(narray, 0).map { |y| srange(narray, 1).map { |x| org_ary[0][y] } }
      }
      made_ary[1] = srange(narray, 2).map { |z|
        srange(narray, 0).map { |y| srange(narray, 1).map { |x| org_ary[1][x] } }
      }
      made_ary[2] = srange(narray, 2).map { |z|
        srange(narray, 0).map { |y| srange(narray, 1).map { |x| org_ary[2][z] } }
      }

      # indexing is not supported for 3D grid yet.
    end
    
    return made_ary.map do |ary|
      narray[0].is_a?(Numo::Int32) ? Numo::Int32[*ary] : Numo::DFloat[*ary]
    end
  end

  def srange(narray, n); return 0...narray[n].size; end
  
end
