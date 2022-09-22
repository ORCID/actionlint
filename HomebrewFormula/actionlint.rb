# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actionlint < Formula
  desc "Static checker for GitHub Actions workflow files"
  homepage "https://github.com/rhysd/actionlint#readme"
  version "1.6.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.19/actionlint_1.6.19_darwin_arm64.tar.gz"
      sha256 "c65eee258e33b3604d1d23fef3a443d85b5506795840321133bbad67b83ba7b6"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.19/actionlint_1.6.19_darwin_amd64.tar.gz"
      sha256 "ecd62f5184ad259c1bd42d2a14e756d18027bc8dadf2ab668bb7f138724ebeac"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.19/actionlint_1.6.19_linux_armv6.tar.gz"
      sha256 "5a74ab6d9b72f4aac33bc9a371ae345eb905c71e51467c7bdfce6e7938ab3ab9"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.19/actionlint_1.6.19_linux_amd64.tar.gz"
      sha256 "8303deaddeb25dd6f40f4ab6bf35d2194402ca046b7ffe07c88593ab46dac120"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.19/actionlint_1.6.19_linux_arm64.tar.gz"
      sha256 "30e9208136b75a0f137e660ce17cb7651009cc46bda41991df4f233319a16bd5"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
  end

  test do
    system "#{bin}/actionlint -version"
  end
end
