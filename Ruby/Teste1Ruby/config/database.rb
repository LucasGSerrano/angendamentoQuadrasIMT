require "mysql" 

@db_host  = "us-cdbr-iron-east-04.cleardb.net"
@db_user  = "bfc04d15862a18"
@db_pass  = "869a0466"
@db_name = "projetointegrado"

client = Mysql::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)