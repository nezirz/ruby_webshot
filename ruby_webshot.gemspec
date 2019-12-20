Gem::Specification.new do |s|
    s.name = "ruby_webshot"
    s.version = "0.0.5"
    s.date = "2019-12-20"
    s.summary = "Ruby Webshot"
    s.description = "Ruby Webshot gem will make nice webshots for you. I needed the webshot/screenshot functionality for one of my website and after trying few ruby gems currently available I found that they are not updated lately and that they are using depricated version of `PhantomJS`: 
    'webshot' [ https://github.com/vitalie/webshot ] 
    'screenshot' [ https://github.com/amire80/screenshot ].  
    Also, I had an issue with produced image CSS formating when I used webshot gem.
    So, I decided to start building a gem for myself and to share for anyone who need something like this.
    The Ruby Webshot Gem use latest `Webdrivers`."
    s.authors     = ["Nezir Z."]
    s.email       = "nezir.zahirovic at gmail com"
    s.homepage    = "https://github.com/nezirz/ruby_webshot"
    s.license     = "MIT"
    s.files = [
        "lib/ruby_webshot.rb"
    ]
    s.require_paths = ["lib"]
    
end