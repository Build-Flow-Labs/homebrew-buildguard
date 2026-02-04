# typed: false
# frozen_string_literal: true

# Homebrew formula for BuildGuard
# Install: brew tap Build-Flow-Labs/buildguard && brew install buildguard
#
# This formula is automatically updated by the release workflow.

class Buildguard < Formula
  desc "Compliance scanner for GitHub organizations - 5 built-in policies"
  homepage "https://github.com/Build-Flow-Labs/buildguard-oss"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v#{version}/buildguard-darwin-amd64"
      sha256 "PLACEHOLDER_DARWIN_AMD64"

      def install
        bin.install "buildguard-darwin-amd64" => "buildguard"
      end
    end

    on_arm do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v#{version}/buildguard-darwin-arm64"
      sha256 "PLACEHOLDER_DARWIN_ARM64"

      def install
        bin.install "buildguard-darwin-arm64" => "buildguard"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v#{version}/buildguard-linux-amd64"
      sha256 "PLACEHOLDER_LINUX_AMD64"

      def install
        bin.install "buildguard-linux-amd64" => "buildguard"
      end
    end

    on_arm do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v#{version}/buildguard-linux-arm64"
      sha256 "PLACEHOLDER_LINUX_ARM64"

      def install
        bin.install "buildguard-linux-arm64" => "buildguard"
      end
    end
  end

  test do
    assert_match "BuildGuard version", shell_output("#{bin}/buildguard version")
  end
end
