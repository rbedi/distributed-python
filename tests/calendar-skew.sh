tmux \
  new-session  "BADCLOCK=1 python3 tests/calendar_skew_demo.py; read" \; \
  split-window "python3 tests/calendar_skew_demo.py; read" \; \
  split-window "python3 tests/calendar_skew_demo.py; read" \; \
  select-layout even-horizontal
