class Lazykube < Formula
  version '0.8.2'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.8.2/lazykube_darwin_amd64.zip"
  sha256 'eb8f0c0dd538b498a6c450c5988c4d4040e8c32bf8212a6dff893d154d66a4c0'
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
