Vagrant.configure('2') do |config|
    config.vm.box = 'centos/8'
    config.vm.provider 'virtualbox' do |vb|
        vb.memory = '1024'
        vc.cpus = '2'
    end
    config.vm.provision "shell", inline: <<-SHELL
        dnf intall -y httpd
        systemctl enable httpd
        systemctl start httpd
    SHELL
end
