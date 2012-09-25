module EasyDl
  module DlHelper
    def definition_list_for(object, options = {})
      content_tag(:dl, options) do
        db = DetailsBuilder.new(object, self)
        yield db
      end
    end
  end
end

ActionView::Base.send :include, EasyDl::DlHelper