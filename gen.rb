require 'rhex'

# Create a grid with a correspondence array from val to color
g = SquareGrid.new(
    element_to_color_hash: {
        h: :brown, m: 'gray91', f: :green, w: :blue, p: 'MediumGoldenRod', d: 'gray37', c: 'red4', s: 'DarkGreen'
    }
)

# Load the same map we used before
g.read_ascii_file( 'map.txt' )

# Create the pic
g.to_pic( 'map.png' )