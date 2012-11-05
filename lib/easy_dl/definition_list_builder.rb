module EasyDl

  class DefinitionListBuilder
    include ::ActionView::Helpers::TagHelper

    def initialize(obj, template)
      @obj = obj
      @template = template
      @is_active_record = obj.respond_to?(:to_model)
    end

    def item(name)
      concat tag(:dt, nil, true, true)
      concat try_translate(name)
      concat '</dt>'

      concat tag(:dd, nil, true, true)
      if block_given?
        yield @obj
      else
        if val = @obj.send(name)
          concat(val.to_s)
        end
      end
      concat '</dd>'

    end

    private

    def try_translate(name)
      @is_active_record ?
        I18n.t("activerecord.attributes.#{@obj.class.name.downcase}.#{name}") : name.to_s
    end

    def concat(str)
      str ||= '-'
      @template.safe_concat(str)
      ''
    end
  end

end