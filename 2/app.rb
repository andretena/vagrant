machines = {
    'server1' => {'image' => 'centos/7', 'ip' => '10'},
    'server2' => {'image' => 'debian/buster64', 'ip' => '20'}

}

machines.each do |name,conf|
    puts name # server1, server2
    puts conf['image']
    puts "#{name} utiliza a imagem #{conf['image']}"
end
