cask "prusaslicer-alpha" do
  version "2.4.0-alpha1,202109011420"
  sha256 "d6ef0e6cb7b61feeac86a3cb8fe6c891d69e11e101297a78880db03df01c4b95"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.before_comma}/PrusaSlicer-#{version.before_comma}+universal-#{version.after_comma}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/PrusaSlicer-(\d+(?:\.\d+)*)\+universal-(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "PrusaSlicer.app"

  conflicts_with cask: 'prusaslicer'

  zap trash: [
    "~/Library/Application Support/PrusaSlicer",
    "~/Library/Preferences/com.prusa3d.slic3r",
    "~/Library/Saved Application State/com.prusa3d.slic3r.savedState",
  ]
end
