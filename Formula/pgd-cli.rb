# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "5.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/files/pgd-cli_5.4.0_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "b5aa5b706e5c49407b251033cec09b7eb9ec9c5c998314576705b2f6c695c6f3"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/files/pgd-cli_5.4.0_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "71e9fb22f908371843d3079561128c6411473780e9b763c564fa50d2de68e1a7"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end
