class Object
  def proxy_block(method)
    unless self.class.method_defined?("orig_#{method}")
      alias_method "orig_#{method}", method
      class_eval %{
        def #{method}(*args, &block)
          if block_given?
            orig_#{method}(*args, &block)
          else
            BlockProxy.new(self, :orig_#{method}, *args)
          end
        end
      }
    end
  end
end

class BlockProxy
  
  # Make sure the proxy is as dumb as it can be.
  # Blatanly taken from Jim Wierich's BlankSlate post:
  # http://onestepback.org/index.cgi/Tech/Ruby/BlankSlate.rdoc
  instance_methods.each { |m| undef_method m unless m =~ /^__/ }
  
  def initialize(target, method, *args)
    @target = target
    @method = method
    @args = args
  end
  
  def proxy_target; @target; end
  def proxy_method; @method; end
  def proxy_args;   @args;   end
  
  def method_missing(method_name, *args, &block)
    proxy_target.send(proxy_method, *proxy_args){ proxy_target.send(method_name, *args, &block) }
  end
  
end