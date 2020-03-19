class AppStoreConnectJwt < Formula
  version "0.9.0"
  url "https://github.com/kyledecot/app_store_connect_jwt/archive/v0.9.0.tar.gz"
  depends_on "ruby@2.6"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "app_store_connect_jwt.gemspec"
    system "gem", "install", "app_store_connect_jwt-#{version}.gem"
    bin.install "exe/app-store-connect-jwt"
    bin.env_script_all_files(libexec/"exe", :GEM_HOME => ENV["GEM_HOME"])
    libexec.install Dir["*"]
  end 
end 
