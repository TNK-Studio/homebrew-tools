class Lazykube < Formula
  version '0.1.0'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.1.0/lazykube_darwin_amd64.zip"
  sha256 '4bc7dcd55c5137fc00a9ab4f1f5a792d750e1083a7731d4022e09608863aebf2'
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
