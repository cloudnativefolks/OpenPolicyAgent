package main

import data.common.helpers as h

# A rule that uses the imported is_admin rule
allow {
    h.is_admin  # Using the alias 'h' to refer to common.helpers
    # Additional conditions can be added here
}
