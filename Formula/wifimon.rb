class Wifimon < Formula
  desc "wifimon is a wireless device monitoring terminal application that allows you to watch signal, noise and SNR levels as well as device configuration and network parameters of your wireless network hardware."
  homepage "https://github.com/attheodo/wifimon"
  url "https://github.com/attheodo/wifimon.git", tag: "0.0.1"
  version "0.0.1"
  sha256 "ea18f77bd2b4b758f4e89915ce33bacb494836df9246d162c7773320fbc7ac70"
  license "MIT"

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
      system "true"
  end

end
