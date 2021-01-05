class Lazykube < Formula
  version '0.9.0'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.9.0/lazykube_darwin_amd64.zip"
  sha256 'ef93b46cad641864429d22f2dae14367c08d53d0d5a7830995eaf1bf7a7ea45b'
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
