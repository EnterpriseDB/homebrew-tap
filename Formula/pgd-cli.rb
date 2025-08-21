# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "6.1.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.1.0-1/pgd-cli_6.1.0_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "450660996631447df879d9b47eee8059271b0e2a2934fe361d2175bdf3901587"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.1.0-1/pgd-cli_6.1.0_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "65575f0ab341cfe7007864f102894c8a0edd35390310e0f9b60039b57aa2d523"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end
