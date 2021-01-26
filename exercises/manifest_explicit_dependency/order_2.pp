notify { 'greeting 2':
  message => 'Goodbye, world!',
  require => Notify["greeting 1"],
}

notify { 'greeting 1':
  message => 'Hello, world!',
}

