# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "5.8.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/5.8.0-1/pgd-cli_5.8.0_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "dd1a6872aaaa446f4e3cd383c50e238946e4a9d0387db5fe3da63f3757f4d4b4"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/5.8.0-1/pgd-cli_5.8.0_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "1f066e55c42230ff6f7d439752fb2617b945f135398ffdce7ba4ebf0ba256ada"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end
