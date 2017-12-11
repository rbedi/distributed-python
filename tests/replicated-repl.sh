tmux \
  new-session  "python3 replicated-repl.py; read" \; \
  split-window "python3 replicated-repl.py; read" \; \
  split-window "python3 replicated-repl.py; read" \; \
  select-layout even-horizontal
