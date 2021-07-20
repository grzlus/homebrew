cask "legimi-for-kindle" do
  version "1.9.0"
  sha256 "2823046dea881111f4d9dd0f80753f32aaf376a5adea2a461573a79659886cf9"

  url "https://files.legimi.com/static/installers/legimi-kindle.dmg"
  name "Legimi for Kindle"
  desc "Allows you to synchronize your Kindle with Legimi"
  homepage "https://www.legimi.pl/"

  livecheck do
    url "https://www.legimi.pl/pobierz-legimi/"
    regex(%r{/static/installers/legimi-kindle.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Legimi for Kindle.app"
end
