class Direct < Formula
    desc "A command-line tool for managing directory structures"
    homepage "https://github.com/tetrachromeio/dircli"
    url "https://github.com/tetrachromeio/dircli/archive/v1.0.0.tar.gz"
    sha256 "7a1a6763c538e618fe9a3de6273e2130069438fc21714b50ac9cab5abab7539b"
  
    depends_on "cmake" => :build
  
    def install
      system "cmake", ".", *std_cmake_args
      system "make"
      bin.install "direct"
    end
  
    test do
      system "#{bin}/direct", "--help"
    end
  end
  