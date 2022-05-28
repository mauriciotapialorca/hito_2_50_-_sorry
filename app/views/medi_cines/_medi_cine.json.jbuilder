json.extract! medi_cine, :id, :number_medicine_isbn, :description, :initial_stock, :final_stock, :initial_price, :final_price, :created_at, :updated_at
json.url medi_cine_url(medi_cine, format: :json)
