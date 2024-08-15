# SSH Port Forwarding Script

This script sets up a remote port forwarding tunnel using `ssh` and `serveo.net`. It allows you to expose a local port to the internet through a custom subdomain.

## Features

- Prompt user for a local port number to forward.
- Prompt user for a custom subdomain for the remote forwarding.
- Establishes a remote port forwarding tunnel using `ssh` with `serveo.net`.

## Requirements

- `ssh`: The script requires `ssh` to be installed on your system.
- `serveo.net` account: No account is needed, as the script uses `serveo.net`'s public service.

## Usage

1. **Clone the Repository**

   Clone this repository to your local machine:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
