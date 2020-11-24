class Lazykube < Formula
  version '0.7.1'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.7.1/lazykube_darwin_amd64.zip"
  sha256 'ee7fa16ee749b0ac04a9749797508bba106b8f572a9e577de7bc9e6d1086f6af'
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
