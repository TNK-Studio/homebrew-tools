class Lazykube < Formula
  version '0.2.1'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.2.1/lazykube_darwin_amd64.zip"
  sha256 '43e9f9d61e3e26975836fd4a34b7c5364a007690cbe722d7b62656b362aed40d'
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
