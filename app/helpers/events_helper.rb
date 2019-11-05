module EventsHelper
  def is_host?
    user_signed_in? && current_user == @event.host
  end
end
