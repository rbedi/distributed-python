touch before

tmux \
  new-session  "python3 non-idempotent-test.py; read" \; \
  split-window "python3 non-idempotent-test.py; read" \; \
  split-window "python3 non-idempotent-test.py; read" \; \
  select-layout even-horizontal

rm after
