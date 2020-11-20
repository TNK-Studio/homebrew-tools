class Lazykube < Formula
  version '0.4.0'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.4.0/lazykube_darwin_amd64.zip"
  sha256 'c0f2d34e661e57b6e716d753397da0c4e1aa692b00518a704840013692fb4690'
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
