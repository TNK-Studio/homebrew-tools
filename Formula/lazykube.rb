class Lazykube < Formula
  version '0.10.1'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.10.1/lazykube_darwin_amd64.zip"
  sha256 '7a820857e59f4475d27accb028842809bea498e41449cc3f0f78ca01923fa872'
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
