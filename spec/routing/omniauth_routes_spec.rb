require 'spec_helper'

describe 'routing for facebook authentication callback' do
 it 'should have a valid callback link' do
    { :get => '/auth/facebook/callback' }.
    should route_to(
      :controller => 'sessions',
      :action => 'omniauth_fb_authenticated',
      :locale => 'pt-BR'
    )
 end
end
