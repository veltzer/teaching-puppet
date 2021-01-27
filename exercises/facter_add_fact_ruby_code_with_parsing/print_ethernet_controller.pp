notify { 'greeting':
  message => "${facts['pci']['Ethernet controller']}",
}
