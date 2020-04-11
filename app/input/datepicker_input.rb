# app/inputs/date_time_input.rb
class DatepickerInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)
    merged_input_options = merge_wrapper_options(
{
      'data-provide' => 'datepicker',
      'data-date-format' => 'dd/mm/yyyy'
    }, merged_input_options)

    input = "#{@builder.text_field(attribute_name, merged_input_options)}".html_safe
    content_tag(:div, content_tag(:div, input, class: "col-sm-3"), class: "row")
  end
end