require 'rhex'

# Create a grid with a correspondence array from val to color
g = SquareGrid.new(
    element_to_color_hash: {
        h: :brown, m: 'gray91', f: :green, p: 'MediumGoldenRod', d: 'gray37', c: 'red4', s: 'DarkGreen'
    }
)

mountain_spots = [ AxialHex.new( 4, 4 ), AxialHex.new( 20, 8 ) ]

0.upto( 30 ).each do |c|
  0.upto( 20 ).each do |r|

    c_hex = AxialHex.new( c, r )

    color = :p

    mountain_spots.each do |ms|
      color = :m if c_hex.distance( ms ) <= 4
    end

    g.cset( c, r, color: color )
  end
end


g.to_pic( 'map2.png' )