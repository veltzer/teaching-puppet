notify { 'greeting 2':
  message => 'Goodbye, world!',
}

notify { 'greeting 1':
  message => 'Hello, world!',
  before => Notify["greeting 2"],
}

