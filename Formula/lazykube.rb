class Lazykube < Formula
  version '0.4.1'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.4.1/lazykube_darwin_amd64.zip"
  sha256 '462d5131d124c4ccd53ec91ea19dd4675e2b7776c9e7cddc4194b1a07f2c3bd6'
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
