# typed: false
# frozen_string_literal: true

class Buildguard < Formula
  desc "Compliance scanner for GitHub organizations - 5 built-in policies"
  homepage "https://github.com/Build-Flow-Labs/buildguard-oss"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v0.2.0/buildguard-darwin-amd64"
      sha256 "f01641bff8cb07bb810dc861e18306da1ef833787ab00a8a9d9df15de509b660"

      def install
        bin.install "buildguard-darwin-amd64" => "buildguard"
      end
    end

    on_arm do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v0.2.0/buildguard-darwin-arm64"
      sha256 "1877011636e36f4365a817c8a8544612b4b09484ac98af8f45ee385476fb86c5"

      def install
        bin.install "buildguard-darwin-arm64" => "buildguard"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v0.2.0/buildguard-linux-amd64"
      sha256 "879af79cc3f07bb64a9d530768437c02dfe7e40d65c7689713f112e0b7988dbc"

      def install
        bin.install "buildguard-linux-amd64" => "buildguard"
      end
    end

    on_arm do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v0.2.0/buildguard-linux-arm64"
      sha256 "16cf51c772adffc4e5b8967ccac145076c48c7286968ce797630dd1d15d62f16"

      def install
        bin.install "buildguard-linux-arm64" => "buildguard"
      end
    end
  end

  test do
    assert_match "BuildGuard version", shell_output("#{bin}/buildguard version")
  end
end
