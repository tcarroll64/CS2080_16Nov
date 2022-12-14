# The OS we want to use 
FROM ubuntu

# Installing zsh and curl
RUN apt update \
 && apt install -y \
  zsh \
  curl

# Download code-server. Command from https://coder.com/docs/code-server/latest
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Adding a user to vs code server (creating home dir and setting shell name)
RUN useradd -ms /bin/bash newuser

# Starting vs code as 'newuser'
USER newuser

# Running code-server binary, specifing the bind address (public), and bypassing user authentication
CMD [ "code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none" ]
