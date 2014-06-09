template "/etc/httpd/conf/httpd.conf" do
	source	"httpd.conf.erb"
	owner	"ken"
	group	"HQ\\Domain\ Admins"
	mode	"0666"
	variables(:allw_override => "ALL")
	notifies :reload, "service[httpd]"
end