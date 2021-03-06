# DO NOT INCLUDE DIRECTLY -- use /lib/Path instead

require 'rubygems'
require 'extensions/kernel' if defined?(require_relative).nil?
require_relative 'Root'

module WebBlocks
  
  module Path
    
    module Build
      
      include ::WebBlocks::Path::Root
      
      def css_build_dir
        from_build_dir_to config[:build][:css][:dir]
      end
      
      def css_build_file
        from_build_dir_to config[:build][:css][:dir], config[:build][:css][:name]
      end
      
      def css_build_file_ie
        from_build_dir_to config[:build][:css][:dir], config[:build][:css][:name_ie]
      end
      
      def img_build_dir
        from_build_dir_to config[:build][:img][:dir]
      end
      
      def js_build_dir
        from_build_dir_to config[:build][:js][:dir]
      end
      
      def js_build_file
        from_build_dir_to config[:build][:js][:dir], config[:build][:js][:name]
      end
      
      def js_build_file_ie
        from_build_dir_to config[:build][:js][:dir], config[:build][:js][:name_ie]
      end
      
      def js_build_script_dir
        from_build_dir_to config[:build][:js][:dir], config[:build][:js][:name_script_dir]
      end
      
      def build_dir
        ::WebBlocks::Path.from_root_to config[:build][:dir]
      end
      
      def from_build_dir_to *args
        args.unshift build_dir
        ::WebBlocks::Path.from_arr_to(args)
      end
      
    end
    
  end
  
end