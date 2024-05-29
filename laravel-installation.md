Other then adding user, group and permission in SELinux system we also need to add another command:
chcon -R -t httpd_sys_rw_content_t bootstrap/cache/
chcon -R -t httpd_sys_rw_content_t storage/

This updates the SELinux security context.

