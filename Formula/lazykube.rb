class Lazykube < Formula
  version '0.10.3'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.10.3/lazykube_darwin_amd64.zip"
  sha256 '26f8014087bd7bf8fd6dace02c4f6fb6312a239853d18e96dfc639ce5bb75d67'
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
