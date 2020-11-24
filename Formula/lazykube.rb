class Lazykube < Formula
  version '0.7.0'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.7.0/lazykube_darwin_amd64.zip"
  sha256 '2a1b26c0e89b403c5f9262a20445db7490c18311cf872d02e3360413cd7bced1'
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
