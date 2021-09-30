class Lazykube < Formula
  version '0.10.2'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.10.2/lazykube_darwin_amd64.zip"
  sha256 'ccf133cebc92f0349ff0eaa32739113583677d6f24976931bb81b74e68ca3a65'
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
