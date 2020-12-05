class Lazykube < Formula
  version '0.8.6'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.8.6/lazykube_darwin_amd64.zip"
  sha256 '0503e4bda25fce7ddbc5f7c85ce1409cc92086c06e02a2b982eb7f3367dd9c0b'
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
