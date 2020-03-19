class Vindetta < Formula
  version "0.25.0"
  url "git@github.com:kyledecot/vindetta.git", :using => :git
  depends_on "ruby@2.4"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "vindetta.gemspec"
    system "gem", "install", "vindetta-#{version}.gem"
    bin.install "exe/vindetta"
    bin.env_script_all_files(libexec/"exe", :GEM_HOME => ENV["GEM_HOME"])
    libexec.install Dir["*"]
  end 
end 
