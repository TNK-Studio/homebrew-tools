class Lazykube < Formula
  version '0.5.0'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.5.0/lazykube_darwin_amd64.zip"
  sha256 '2cd1c236a908f410a807c621ffecdf21e2209baec7349303181708b22456c62e'
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
