require "minitest/autorun"
require "ruby_webshot"
require 'fastimage'

class RubyWebshotTest < MiniTest::Test 

    def test_image_nil
        assert_nil Dir.pwd["/*.png"]
    end

    def test_image_create
        RubyWebshot.call("https://socijala.xyz")
        assert_equal false, Dir.glob(Dir.pwd + "/*.png").empty?

        File.delete(*Dir.glob(Dir.pwd + "/*.png"))
    end

    def test_image_params
        RubyWebshot.call("https://socijala.xyz",{:file_name =>"saban.png", :width => 500,:height => 500})
        size = FastImage.size(Dir.pwd + "/saban.png")
        assert_equal [500,500], size

        File.delete(*Dir.glob(Dir.pwd + "/saban.png"))
    end

end