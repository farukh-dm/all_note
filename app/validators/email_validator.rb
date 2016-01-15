class EmailValidator < ActiveModel::Validator

  def validate(record)

  	if record.email.present?  	
  		unless record.email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      	record.errors[:email] << 'Please provide valid email'
    	end
  	end

  end

  private
    
end
