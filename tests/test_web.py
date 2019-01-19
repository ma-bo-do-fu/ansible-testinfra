def test_httpd_is_installed(host):
    httpd = host.package("curl")
    assert httpd.is_installed
