class BrewGhost < Formula
  desc "Behavioral cleanup tool for Homebrew that purges idle packages"
  homepage "https://github.com/amfi-disable/brew-ghost"
  url "https://github.com/amfi-disable/brew-ghost/archive/refs/tags/V1.0.2.tar.gz"
  sha256 "dbe96e3bfae9cf678a5e4c19f1f44f3b615dfde8f5b2cecfd4fe8cc64ed4cb2b"
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
