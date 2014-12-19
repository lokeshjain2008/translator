require "translator/version"
require 'typhoeus'
require 'xkeys'
require 'json'
require 'yaml'


module Moda

  class << self
    def create_file (default_file='config/locales/en.yml',lang='pt')
      $key_placer = []
      $file_content = YAML::load_file(default_file)
      def iterate item
        item.each do |k, v|
          if v.is_a? Hash
            $key_placer << k
            iterate v
          else
            $file_content[*$key_placer][k] = translate($file_content[*$key_placer][k])
          end
        end
        $key_placer.pop
      end
      #create file from the default lang to other lang.
      File.open("config/locales/#{lang}.yml",'w') do |f|
        
        f.write $file_content.to_yaml
        
      end
    end

    def translate(value)
      p "Hey this is called"
      if value
        key ='trnsl.1.1.20141217T131538Z.6dbc348f781682d3.8c10d7dd93f264d51bfe6e14d1c1fe3b15a37aed'
        domain = 'https://translate.yandex.net/api/v1.5/tr.json/translate'
        JSON.load(
            Typhoeus.get(domain,
                         params:{key:key,text:value,lang:'en-pt'})
                .response_body.force_encoding('utf-8')
        )['text'].first
      end
    end

  end


end
