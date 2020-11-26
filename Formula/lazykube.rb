class Lazykube < Formula
  version '0.8.3'
  homepage 'https://github.com/TNK-Studio/lazykube'
  url "https://github.com/TNK-Studio/lazykube/releases/download/v0.8.3/lazykube_darwin_amd64.zip"
  sha256 '8fddfdcb987674982b90a3be7872fa8f67786dc98bc555f5a383dee64aba0713'
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
