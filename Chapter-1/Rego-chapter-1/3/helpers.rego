package common.helpers

default is_admin = false

# A simple rule to check admin status
is_admin {
    input.user == "admin"
}
