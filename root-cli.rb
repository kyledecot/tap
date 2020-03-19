class RootCli < Formula
  version "0.1.0"
  url "git@github.com:kyledecot/root-cli.git", :using => :git
  depends_on "ruby@2.6"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "root-cli.gemspec"
    system "gem", "install", "root-cli-#{version}.gem"
    bin.install "exe/root"
    bin.env_script_all_files(libexec/"exe", :GEM_HOME => ENV["GEM_HOME"])
    libexec.install Dir["*"]
  end 
end 
