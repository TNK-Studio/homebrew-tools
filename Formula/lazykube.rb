class Lazykube < Formula
  version '0.3.0'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.3.0/lazykube_darwin_amd64.zip"
  sha256 'f628d023deab6b00c7850d396a1881a3186557fec3ead001112729230d1c0f40'
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
