module ApplicationHelper
  def number_to_currency(number, options = {})
    options[:precision] ||= 2
    options[:unit] ||= "R$"
    options[:separator] ||= "."
    options[:delimiter] ||= ","
    "#{options[:unit]}#{number_with_precision(number, options)}"
  end

  def number_with_precision(number, options = {})
    rounded_number = number.round(options[:precision])
    integer_part, fractional_part = rounded_number.to_s.split('.')
    fractional_part = (fractional_part || "").ljust(options[:precision], '0')
    "#{integer_part}#{options[:separator]}#{fractional_part}"
  end

end
