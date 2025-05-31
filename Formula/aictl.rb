class Aictl < Formula
    desc "Handy CLI tool to ask anything to generative AI in command line."
    homepage "https://github.com/go-zen-chu/aictl"
    version "1.0.5"
    
    on_macos do
        if Hardware::CPU.arm?
            url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.5/aictl_Darwin_arm64.tar.gz"
            sha256 ""
        else
            url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.5/aictl_Darwin_x86_64.tar.gz"
            sha256 ""
        end
    end

    on_linux do
        if Hardware::CPU.arm?
            url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.5/aictl_Linux_arm64.tar.gz"
            sha256 ""
        else
            url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.5/aictl_Linux_x86_64.tar.gz"
            sha256 ""
        end
    end

    def install
        bin.install "aictl"
    end

    test do
        system "#{bin}/aictl", "--help"
    end
end
