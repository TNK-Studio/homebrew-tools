class Lazykube < Formula
  version '0.2.2'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.2.2/lazykube_darwin_amd64.zip"
  sha256 'cc81eca4d1cda3d4b90ce85ec98600974b9f66efe4ef79cf96143ad3da223acc'
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
