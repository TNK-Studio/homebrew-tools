class Lazykube < Formula
  version '0.3.1'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.3.1/lazykube_darwin_amd64.zip"
  sha256 '6c364180d0d2a9a6af9c92a0e9e1e44678f1bcdf8ac26d506a91fa7f86393953'
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
