require 'fastimage'

module Jekyll
  module ImageSizeFilter
    def image_size(image_path)
      site_source = @context.registers[:site].source
      full_path = File.join(site_source, image_path)

      size = FastImage.size(full_path)
      if size
        { 'width' => size[0], 'height' => size[1] }
      else
        { 'width' => nil, 'height' => nil }
      end
    rescue
      { 'width' => nil, 'height' => nil }
    end
  end
end

Liquid::Template.register_filter(Jekyll::ImageSizeFilter)
