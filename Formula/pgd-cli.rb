# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "5.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/files/pgd-cli_5.5.0_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "0cb20deb8ecbd293ae7719a1bd7b3bbc4281f84b3ef0d95ff0230d36b0c8c503"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/files/pgd-cli_5.5.0_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "95af066457229afa100b76c58524a66bdbaecdae502f6e7eb391c7458cd7a95c"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end
