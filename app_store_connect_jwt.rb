class AppStoreConnectJwt < Formula
  version "0.9.0"
  url "git@github.com:kyledecot/app-store-connect-jwt.git", :using => :git
  depends_on "ruby@2.6"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "app-store-connect-jwt.gemspec"
    system "gem", "install", "app-store-connect-jwt-#{version}.gem"
    bin.install "exe/app-store-connect-jwt"
    bin.env_script_all_files(libexec/"exe", :GEM_HOME => ENV["GEM_HOME"])
    libexec.install Dir["*"]
  end 
end 
