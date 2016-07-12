module JsonResponse
  extend ActiveSupport::Concern

  def render_output (errorcode = :ok, object = nil)
    output = generate_empty_output errorcode
    output[:message] = stringify_error_messages object.errors if object
    render json: output
  end

  def generate_empty_output (errorcode = :ok)
    # generates the default output object json
    # :success => true means success
    # :errorcode => will have valid error code for failure, 0 for success
    # :message => irrelevant for success, display on failure
    error_message = error_message_list[errorcode] || [404, "Unknown Error"]
    return {
        :success => (errorcode == :ok),
        :errorcode => error_message[0],
        :message => error_message[1]
    }
  end

  def error_message_list
    {
        :ok => [0, "Data Ok."],
        :data_not_found => [400, "Data not found."],
        :unauthorized_access => [401, "Unauthorized Access."],
        :user_not_found => [402, "User Not Found."],
        :invalid_input => [403, "Invalid Input."],
        :unknown_error => [404, "Unknown Error."],
        :invalid_user_id => [405, "Invalid User Id."],
        :invalid_password => [408, "Invalid Password"],
        :email_already_registered => [409, "Email already registered"]
    }
  end

  def stringify_error_messages errors
    return errors.full_messages.join(", ")
  end

end