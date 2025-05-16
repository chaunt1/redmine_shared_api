module IssuePatch
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def required_attribute_names(user:)
      base.required_attribute_names(user: user)
    end
  end
end

Issue.send(:include, IssuePatch)