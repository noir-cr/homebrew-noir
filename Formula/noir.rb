# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Noir < Formula
  desc "♠️ noir is an attack surface detector that identifies endpoints by static analys"
  homepage "https://github.com/noir-cr/noir"
  url "https://github.com/noir-cr/noir/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "37b0b78d4673cc2482ad346010de8b36be5f75c92724938aa6e2ec1fd1883e20"
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
