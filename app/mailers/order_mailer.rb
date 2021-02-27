class OrderMailer < ActionMailer::Base
    default to: 'sales@gtautotransport.com'
    def order_email(todays_date, date_first_available, phone, email, origin_first_name, origin_last_name, origin_street, origin_city, origin_state, origin_zip, origin_cell_phone, destination_first_name, destination_last_name, destination_street, destination_city, destination_state, destination_zip, destination_cell_phone, year, make, model, is_operable, description)
        @todays_date = todays_date
        @date_first_available = date_first_available
        @phone = phone
        @email = email
        @origin_first_name = origin_first_name
        @origin_last_name = origin_last_name
        @origin_street = origin_street
        @origin_city = origin_city
        @origin_state = origin_state
        @origin_zip = origin_zip
        @origin_cell_phone = origin_cell_phone
        @destination_first_name = destination_first_name
        @destination_last_name = destination_last_name
        @destination_street = destination_street
        @destination_city = destination_city
        @destination_state = destination_state
        @destination_zip = destination_zip
        @destination_cell_phone = destination_cell_phone
        @year = year
        @make = make
        @model = model
        @is_operable = is_operable
        @description = description
        
        mail(from: 'sales@gtautotransport.com', subject: 'NEW ORDER')
    end
end