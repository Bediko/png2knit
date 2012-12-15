require "chunky_png"

image = ChunkyPNG::Image.from_file(ARGV[0])
h = image.height
w = image.width
BLACK = ChunkyPNG::Color.rgba(0,0,0,255)
WHITE = ChunkyPNG::Color.rgba(255,255,255,255)

0.upto(h-1) do |y|
	0.upto(w-1) do |x|
		if image[x,y] == BLACK
			print "x"
		elsif image[x,y] == WHITE
			print " "
		else
			put "Not a black/white picture"
			exit(1)
		end
	end
	puts
end