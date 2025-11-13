# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "6.1.2"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.1.2-1/pgd-cli_6.1.2_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "32b94019104250f5cc9892aac313fb8729aa35f929ead47ab6fabe7dd35ef592"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.1.2-1/pgd-cli_6.1.2_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "501d7e1939ecffcb5612bacc1a8e8ff68ec48aaf089f7195fcf00b00aa6e7a09"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end
