Facter.add("curr_dir") do
  confine :kernel => "windows"
  setcode do
    Facter::Util::Resolution.exec('C:\Windows\System32\cmd.exe /c cd').chomp.gsub('\\', '/')
  end
end
