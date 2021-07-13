class UserController < ApplicationController
        def signup
                @account_new  = Account.new
                @password_error =nil
                @user_name = params[:u_name]
                @password = params[:pass]
                @repassword = params[:repass]
                @email = params[:email]
                @message = nil
                if((@password === @repassword) && !(@password.nil?)) #password math
                        @account_new.username = @user_name
                        @account_new.password = @password
                        @account_new.save
                        if(@account_new.save)#Signup complete go to login page
                                render 'login'
                        else#data not saves successsfully
                                render 'signup'
                        end
                elsif((@password != @repassword))
                        @message = "Re enter Password Not matched !"
                else

                end

        end

        def login

        end

        def search
        end


        def arduino
                @iot_data = IotDatum.all
                @size = @iot_data.size
        end

        def espDataCollection
                @temp = params[:temp]
                @iot_database  = IotDatum.new
                @iot_database.temp = @temp
                @iot_database.hum = "NIL"
                @iot_database.save
        end
end
