touch 0

tmux \
  new-session  "python3 non-idempotent-test.py; read" \; \
  split-window "python3 non-idempotent-test.py; read" \; \
  split-window "python3 non-idempotent-test.py; read" \; \
  select-layout even-horizontal

rm 10
