class Lazykube < Formula
  version '0.8.5'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.8.5/lazykube_darwin_amd64.zip"
  sha256 'bd3ea01d8be1e70a8c8dbed2a05efc3b5a234a86ee44d653e2f9a5dc3b6cfd6c'
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
