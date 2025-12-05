# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "6.2.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.2.0-1/pgd-cli_6.2.0_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "aad93b088cff5c7c15350a97f9162989e76e2ba0a3de28b7ac387f591f8b48ce"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.2.0-1/pgd-cli_6.2.0_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "f448a4bd8d6edeba3d6c95384cb86cee6d9d6ff138d87bd3d4b6e1c40b62009b"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end
