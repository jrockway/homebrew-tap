# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jlog < Formula
  desc "Pretty-print JSON logs"
  homepage "https://github.com/jrockway/json-logs"
  version "0.0.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jrockway/json-logs/releases/download/v0.0.5/jlog_v0.0.5_darwin_arm64"
      sha256 "d21a5adb9ac62931689f3d69bf30b6bcb76b46c22faa1f279980e338e7710283"

      def install
        bin.install "jlog_v0.0.5_darwin_arm64" => "jlog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jrockway/json-logs/releases/download/v0.0.5/jlog_v0.0.5_darwin_amd64"
      sha256 "0b7ee42a0fd898331226bdc86a736aeeb6596f7698eb14514b2ae17d1436e145"

      def install
        bin.install "jlog_v0.0.5_darwin_amd64" => "jlog"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jrockway/json-logs/releases/download/v0.0.5/jlog_v0.0.5_linux_armv6"
      sha256 "cf3d11e2f15d2e1c3bd1f75529fda9df7c100b0547cf0d30dec1c0dea67621a1"

      def install
        bin.install "jlog_v0.0.5_linux_armv6" => "jlog"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jrockway/json-logs/releases/download/v0.0.5/jlog_v0.0.5_linux_arm64"
      sha256 "25d8eec2a8ca6a2b6dfeff5396928b1e45ff7f6f56dd787a1a9c151abc5cc00b"

      def install
        bin.install "jlog_v0.0.5_linux_arm64" => "jlog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jrockway/json-logs/releases/download/v0.0.5/jlog_v0.0.5_linux_amd64"
      sha256 "254fd3b61bf55059ba4b75967b2de5bf319808dc8df282b2f72a1ca0bd8af5ce"

      def install
        bin.install "jlog_v0.0.5_linux_amd64" => "jlog"
      end
    end
  end

  conflicts_with "jlog"

  test do
    system "#{bin}/jlog --version"
  end
end
