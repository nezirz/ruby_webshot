require "minitest/autorun"
require "ruby_webshot"
require "fastimage"

class RubyWebshotTest < MiniTest::Test 

    def test_image_nil
        assert_nil Dir.pwd["/*.png"]
    end

    def test_image_create
        RubyWebshot.call("https://www.linkedin.com/in/nezir/")
        assert_equal false, Dir.glob(Dir.pwd + "/*.png").empty?

        File.delete(*Dir.glob(Dir.pwd + "/*.png"))
    end

    def test_image_params
        RubyWebshot.call("https://www.linkedin.com/in/nezir/",{:file_name =>"sarajevo.png", :width => 500,:height => 500})
        size = FastImage.size(Dir.pwd + "/sarajevo.png")
        assert_equal [500,500], size

        File.delete(*Dir.glob(Dir.pwd + "/sarajevo.png"))
    end

    def test_custom_save_file_path
        RubyWebshot.call("https://www.linkedin.com/in/nezir/",{:save_file_path => "/home/zire/rcode/ruby_webshot", :file_name =>"sarajevo.png", :width => 500,:height => 500})
        size = FastImage.size(Dir.pwd + "/sarajevo.png")
        assert_equal [500,500], size

        File.delete(*Dir.glob(Dir.pwd + "/sarajevo.png"))         
    end

end