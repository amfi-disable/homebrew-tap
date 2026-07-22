class BrewGhost < Formula
  desc "Behavioral cleanup tool for Homebrew that purges idle packages"
  homepage "https://github.com/amfi-disable/Brew-Ghost"
  url "https://github.com/amfi-disable/Brew-Ghost/archive/refs/tags/V1.0.3.tar.gz"
  sha256 "20a470ee35265797a84657bc45b40b22d064c178e562a19c06c4ef703d5f77dd"
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
