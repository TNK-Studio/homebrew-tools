class Lazykube < Formula
  version '0.8.4'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.8.4/lazykube_darwin_amd64.zip"
  sha256 '90d73a463a55a0a4074048fbeafe0f908efcbd0f4a7bb7bd297fe3d20245ea6b'
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
