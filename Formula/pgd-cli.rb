# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "5.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/files/pgd-cli_5.4.0_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "f7652c7eabba44be30ca24d49decb46826468e180e4637365d90b761afffd446"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/files/pgd-cli_5.4.0_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "4a441969da36a844932ae4868fc393ed93019cca3dab7f846828e61e66ba7f2c"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end