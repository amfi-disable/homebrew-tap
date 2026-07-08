class BrewGhost < Formula
  desc "Behavioral cleanup tool for Homebrew that purges idle packages"
  homepage "https://github.com/amfi-disable/brew-ghost"
  url "https://github.com/amfi-disable/brew-ghost/archive/refs/tags/V1.0.0.tar.gz"
  sha256 "8faf7e4f2514d0238f75d3489d614f260596782bc71327782ececd1247659157"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Install the ghost.py engine as the executable `brew-ghost` in Homebrew's global binary path
    bin.install "ghost.py" => "brew-ghost"
  end

  test do
    # Verify the executable is installed and handles arguments correctly
    assert_match "brew-ghost - A behavioral cleanup tool for Homebrew", shell_output("#{bin}/brew-ghost --help")
  end
end
