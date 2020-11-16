class Lazykube < Formula
  version '0.1.1'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.1.1/lazykube_darwin_amd64.zip"
  sha256 'd49d2d7dded3640e2e5825e569f62b3efd3265fd51e4bfaf9bc90ca41c04a891'
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
