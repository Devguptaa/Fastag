class ApplicationController < ActionController::Base
#   private
#   def current_owner
#     Current.owner ||=authenticate_owner_from_session
#   end
#   helper_method :current_owner
#   def authenticate_owner_from_session
#     Owner.find_by(id:session[:owner_id])
#   end
#   def owner_signed_in?
#     current_owner.present?
#   end
#   helper_method :owner_signed_in?
#   def login(owner)
#     Current.owner=owner
#     reset_session
#     session[:owner_id]=owner.id
#   end
#   def logout(owner)
#     Current.owner=nil
#     reset_session
  end
# end
