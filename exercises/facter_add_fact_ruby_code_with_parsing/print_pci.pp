notify { 'greeting':
  message => "${facts['pci']}",
}
