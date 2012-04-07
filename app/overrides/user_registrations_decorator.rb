Deface::Override.new(:virtual_path => "spree/checkout/registration",
                     :name => "add_socials_to_checkout_extras",
                     :insert_bottom => "[data-hook='social_checkout']",
                     :partial => "spree/shared/social_checkout",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/user_registrations/new",
                     :name => "add_socials_to_login_extras",
                     :insert_after => "[data-hook='login_extras']",
                     :text => %q(<%= render :partial => 'spree/shared/social' unless session[:omniauth] %>),
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/user_sessions/new",
                     :name => "add_socials_to_login_extras",
                     :insert_after => "[data-hook='login_extras']",
                     :partial => "spree/shared/social",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/user_registrations/new",
                     :name => "remove_new_customer_if_seesionomniauth",
                     :replace => "div#new-customer h6",
                     :partial => "spree/users/new-customer",
                     :disabled => false)
