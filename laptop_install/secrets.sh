#!/usr/bin/env bash

if [ ! -f /tmp/foo.txt ]; then
    echo "Creating .dotfilshell/shell/secrets"
    touch shell/secrets
    echo "#!/usr/bin/env bash" >> shell/secrets
    echo "# Put any secret configurations here" >> shell/secrets
    echo "" >> shell/secrets
fi
