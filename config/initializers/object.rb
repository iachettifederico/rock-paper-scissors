# frozen_string_literal: true

class Object
  def self.boolean_count(attr)
    define_method("#{attr}_count") do
      instance_variable_get("@#{attr}").count
    end

    define_method("has_#{attr}?") do
      public_send("#{attr}_count").positive?
    end
  end

  def subclass_responsibility
    method = caller.first[/.+:in `(\w+)'/, 1]

    raise SubclassResponsibility, "Please implement '#{method}' in subclass: #{self.class}\n on #{caller.first.yellow}"
  end
end

SubclassResponsibility = Class.new(RuntimeError)
