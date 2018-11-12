function img = reduceGrayLevel(image, level)
    imageSize = size(image);
	num = 256 / level;	
	img = uint8(zeros(imageSize(1), imageSize(2)));
	
	for r = 1:1:imageSize(1)
		for c = 1:1:imageSize(2)
			img(r, c) = fix(double(image(r, c)) / num) * 255 / (level-1);
		end
	end
end
