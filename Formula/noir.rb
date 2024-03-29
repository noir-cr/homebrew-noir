# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Noir < Formula
  desc "Attack surface detector that identifies endpoints by static analysis"
  homepage "https://github.com/noir-cr/noir"
  url "https://github.com/noir-cr/noir/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "2fa8e8956fb16a69aefcfc3538fae95c96fa3e68467e41fece6fc1d6e4433363"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards install"
system "shards build --release --no-debug --production"
bin.install "bin/noir"
  end

  test do
    system "{bin}/noir", "-v"
  end
end
