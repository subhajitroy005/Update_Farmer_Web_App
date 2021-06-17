class UserController < ApplicationController
        def signup

                @password_error =nil
                @user_name = params[:u_name]
                @password = params[:pass]
                @repassword = params[:repass]
                @email = params[:email]

                if((@password === @repassword) && !(@password.nil?)) #password math

                        @account_new  = Account.new
                        @account_new.username = @user_name
                        @account_new.password = @password
                        @account_new.save
                        @message = "Signup successfully !"
                elsif((@password != @repassword))
                        @message = "Re enter Password Not matched !"
                else

                end

        end

        def login

        end

        def search
                params
        end

end
