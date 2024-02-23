package permissions

# Scalar values for roles
role_admin = "admin"
role_user = "user"

# Object mapping roles to allowed actions
actions_allowed = {
    role_admin: ["create", "read", "update", "delete"],
    role_user: ["read"]
}

# Main policy rule: Allow action
allow {
    # Set comprehension to generate the set of allowed actions for the user's role
    action_allowed := {action | action = actions_allowed[input.role][_]}
    # Check if the input action is in the set of allowed actions
    input.action == action_allowed[_]
}
