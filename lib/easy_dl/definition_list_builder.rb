module EasyDl

  class DetailsBuilder
    include ::ActionView::Helpers::TagHelper

    def initialize(obj, template)
      @obj = obj
      @template = template
    end

    def item(name)
      concat tag(:dt)
      concat I18n.t("activerecord.attributes.#{@obj.class.name.downcase}.#{name}")
      concat '</dt>'

      concat tag(:dd)
      if block_given?
        yield @obj
      else
        concat @obj.send(name)
      end
      concat '</dd>'

    end

    private

    def concat(str)
      str ||= '-'
      @template.safe_concat(str)
      ''
    end
  end

end