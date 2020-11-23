class Lazykube < Formula
  version '0.6.0'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.6.0/lazykube_darwin_amd64.zip"
  sha256 'afb38a5f8dabd29de0db3a56ee0201d35c5adcfdd841fab0e13d5cfc7021b705'
  head 'https://github.com/TNK-Studio/lazykube.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'lazykube'
  end
end
