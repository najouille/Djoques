class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    def destroy
        @djoker.destroy
        respond_to do |format|
            format.html { redirect_to djoques_url, notice: "Votre Djoque à bien été supprimée :(" }
            format.json { head :no_content }
        end
    end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password)}

            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :current_password)}
        end

end