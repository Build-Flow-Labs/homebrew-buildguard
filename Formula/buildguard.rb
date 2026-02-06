# typed: false
# frozen_string_literal: true

class Buildguard < Formula
  desc "Compliance scanner for GitHub organizations - 5 built-in policies"
  homepage "https://github.com/Build-Flow-Labs/buildguard-oss"
  version "0.0.2-test"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v0.0.2-test/buildguard-darwin-amd64"
      sha256 "af0889360b83f50756fda81737819ba80c32fcaccd8bddff7a9bb99ad6748220"

      def install
        bin.install "buildguard-darwin-amd64" => "buildguard"
      end
    end

    on_arm do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v0.0.2-test/buildguard-darwin-arm64"
      sha256 "b47d9ce50fe5a025029d20157605304d8282ced082d3505a1d5c659e50947a5a"

      def install
        bin.install "buildguard-darwin-arm64" => "buildguard"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v0.0.2-test/buildguard-linux-amd64"
      sha256 "84956d4812aeaf63d1e3345404034ee95861376440010f86d0dc587cef7e3971"

      def install
        bin.install "buildguard-linux-amd64" => "buildguard"
      end
    end

    on_arm do
      url "https://github.com/Build-Flow-Labs/buildguard-oss/releases/download/v0.0.2-test/buildguard-linux-arm64"
      sha256 "8dc0c4ad60b1f5e36bdfdd00a092c26e4f2ca034da1ffddc9d6bb0ccd32a2493"

      def install
        bin.install "buildguard-linux-arm64" => "buildguard"
      end
    end
  end

  test do
    assert_match "BuildGuard version", shell_output("#{bin}/buildguard version")
  end
end
