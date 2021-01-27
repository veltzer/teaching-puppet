# pci.rb

Facter.add('pci') do
  setcode do
    Facter::Core::Execution.execute('lspci').split("\n").to_h {
      |a| [a[8..-1].split(": ")[0], a[8..-1].split(": ")[1]]
    }
  end
end
