class Lazykube < Formula
  version '0.10.0'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.10.0/lazykube_darwin_amd64.zip"
  sha256 'cdffe60b1152a0d5f272ff207b69139e62de232ebe89821f20991689ec9b1967'
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
