class Lazykube < Formula
  version '0.8.1'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.8.1/lazykube_darwin_amd64.zip"
  sha256 'af4639034553484dde9da1d886194d34f071d5c7ced58c83662529e5543644c9'
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
