class Lazykube < Formula
  version '0.2.3'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.2.3/lazykube_darwin_amd64.zip"
  sha256 '33e4b1f0b0decc09be41ee52105efbfd09a897e9ebe34965921bafcfdef96b03'
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
