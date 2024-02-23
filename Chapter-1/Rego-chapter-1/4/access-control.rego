package example

# Define a default decision
default allow = false

# Rule for allowing access
allow {
    input.user == "admin"
}

# Another rule for allowing access
allow {
    input.user == "user"
    input.action == "read"
}
