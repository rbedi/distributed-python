tmux \
  new-session  "BADCLOCK=1 python3 calendar-skew-demo.py; read" \; \
  split-window "python3 calendar-skew-demo.py; read" \; \
  split-window "python3 calendar-skew-demo.py; read" \; \
  select-layout even-horizontal
