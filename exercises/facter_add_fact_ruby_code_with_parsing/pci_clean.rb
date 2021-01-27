# pci.rb

Facter.add('pci') do
  setcode do
    Facter::Core::Execution.execute('lspci')
  end
end
