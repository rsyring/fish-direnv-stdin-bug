```
 ❯ docker compose run --rm --build fish-shell
root@bd0c85efe474 ~# cd example/
direnv: loading ~/example/.envrc
test: direnv: error signal: killed

root@bd0c85efe474 ~/example# cd
root@bd0c85efe474 ~# bash

root@bd0c85efe474:~# cd example/
direnv: loading ~/example/.envrc
test: foobar
response: foobar
root@bd0c85efe474:~/example#
```

Produced as an example for this direnv bug: https://github.com/direnv/direnv/issues/1237
