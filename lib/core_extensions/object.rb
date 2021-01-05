module CoreExtensions
  module Object

    ##
    # this behaves the same as `#extend`, except replaces existing methods
    def extend!(mod)
      mod.instance_methods.each do |k|
        define_singleton_method(k, &mod.instance_method(k).bind(self))
      end
    end
  end
end