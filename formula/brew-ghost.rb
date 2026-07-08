class BrewGhost < Formula
  desc "Behavioral cleanup tool for Homebrew that purges idle packages"
  homepage "https://github.com/amfi-disable/Brew-Ghost"
  url "https://github.com/amfi-disable/Brew-Ghost/archive/refs/tags/V1.0.2.tar.gz"
  sha256 "d29a761f81a99b8393a3f05b5ef5970ebc47f157ba9ef10071a8c9c7fc875ffe"
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
