execute 'Install Open Media Vault' do
  command 'wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install | sudo bash'
  action:run
end
