tmux \
  new-session  "python3 -c 'import simple_client; import time; print(time.time())'; read" \; \
  split-window  "python3 -c 'import simple_client; import time; print(time.time())'; read" \; \
  split-window  "python3 -c 'import simple_client; import time; print(time.time())'; read" \; \
  select-layout even-horizontal
