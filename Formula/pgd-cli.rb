# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "6.0.2"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.0.2-1/pgd-cli_6.0.2_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "0936b9a5553ed833799618d5bc3aa59906c4ffb2681d5af07f61e9d73554b688"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.0.2-1/pgd-cli_6.0.2_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "861e49b2d0b55b8326e1714f48693e6b4842a40bed8ca7b24f7b0142003a07a8"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end
