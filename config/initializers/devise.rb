SpreeSocialAccount::OAUTH_PROVIDERS.each do |provider|
  SpreeSocialAccount.init_provider(provider[1])
end
