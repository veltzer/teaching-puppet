class notifier {
  notify { 'Hello World':
  }
}

/* this doesnt work
class { 'notifier':
}
class { 'notifier':
}
*/

class notifier1 {
  include notifier
}
class notifier2 {
  include notifier
}
class { 'notifier1':
}
class { 'notifier2':
}
