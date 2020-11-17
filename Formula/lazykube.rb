class Lazykube < Formula
  version '0.1.2'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.1.2/lazykube_darwin_amd64.zip"
  sha256 '6562403c7867f703acc10acfe8a6181a09a4d34fa5f48c9148b416169fe89f5b'
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
