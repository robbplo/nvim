FROM nixos/nix

RUN echo "experimental-features = flakes nix-command" >> /etc/nix/nix.conf

COPY . /app

WORKDIR /app

RUN nix build

