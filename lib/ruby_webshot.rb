require 'webdrivers'

class RubyWebshot

    def self.call(url_to_shot, args = {}) 
        return nil if url_to_shot.nil?
        
        initialize

        #get the parameters or set default
        options = args

        file_name = options[:file_name] || "#{Time.now.strftime("%d-%m-%Y-%H%M%S")}.png"
        p file_name
        save_file_path = options[:save_file_path] ? "#{options[:save_file_path]}/#{file_name}" : "#{Dir.pwd}/#{file_name}"

        p save_file_path

        width = options[:width] || 860
        height = options[:height] || 860

        #navigate to a url to shot
        @driver.navigate.to url_to_shot

        #resize shot and save
        @driver.manage.window.resize_to(width, height)
        @driver.save_screenshot save_file_path
    
        #finish
        finalize
    end
    
    private
    
    def self.initialize
        # setting the driver for a headless mode
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--headless')
        options.add_argument('--hide-scrollbars')
        @driver = Selenium::WebDriver.for :chrome, options: options
    end
    
    def self.finalize
        @driver.quit
    end

end