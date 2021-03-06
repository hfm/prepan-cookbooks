name "db"
run_list %w(
  role[base]
  recipe[mysql::server]
)

# We'll use the settings below only in Vagrant box
default_attributes(
  "mysql" => {
    "server_root_password"   => "",
    "server_repl_password"   => "",
    "server_debian_password" => "",
    "use_upstart"            => true,
  },
)
