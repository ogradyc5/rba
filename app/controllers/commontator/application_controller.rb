module Commontator
  class ApplicationController < ActionController::Base
    before_filter :set_member, :ensure_member
    helper_method :current_member
    
    rescue_from SecurityTransgression, :with => lambda { head(:forbidden) }
    
    protected

    def security_transgression_unless(check)
      raise SecurityTransgression unless check
    end

    def set_member
      @member = Commontator.current_member_proc.call(self)
    end

    def ensure_member
      security_transgression_unless(@member && @member.is_commontator)
    end

    def set_thread
      @thread = params[:thread_id].blank? ? \
        Commontator::Thread.find(params[:id]) : \
        Commontator::Thread.find(params[:thread_id])
      security_transgression_unless @thread.can_be_read_by? @member
      commontator_set_new_comment(@thread, @member)
    end
    
    def current_member
      return unless session[:member_id]
      @current_member || Member.find(session[:member_id])
    end 
  end
end
