notify { 'greeting':
  message => upcaser('hello, puppet!'),
}
