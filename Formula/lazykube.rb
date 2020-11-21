class Lazykube < Formula
  version '0.4.2'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.4.2/lazykube_darwin_amd64.zip"
  sha256 'f70c9f2f818aaf52f1344e442a27e56a2d1c1bb5568f8aecbb7b9f42eaf6ac45'
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
