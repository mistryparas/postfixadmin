<?php 
$CONF['configured'] = true; 
$CONF['setup_password'] = '$hash'; 
$CONF['default_language'] = 'en'; 
$CONF['database_type'] = 'mysqli'; 
$CONF['database_host'] = 'mariaDB'; 
$CONF['database_user'] = 'vmaildb'; 
$CONF['database_password'] = 'redhat123'; 
$CONF['database_name'] = 'vmailuser'; 
$CONF['admin_email'] = 'mailadmin@example.com'; 
$CONF['page_size'] = '50'; 
$CONF['default_aliases'] = array ( 
    'MAILER-DAEMON' => 'postmaster@example.com', 
    'abuse' => 'postmaster@example.com', 
    'postmaster' => 'hostmaster@example.com', 
    'webmaster' => 'hostmaster@example.com', 
    'hostmaster' => 'root@example.com', 
    'root' => 'admin@example.com' 
); 
$CONF['domain_path'] = 'YES'; 
$CONF['domain_in_mailbox'] = 'NO'; 
$CONF['transport'] = 'YES'; 
$CONF['transport_options'] = array ( 
    'dovecot',  // for virtual accounts 
    'virtual',  // for virtual accounts 
    'local',    // for system accounts 
    'relay'     // for backup mx 
); 
$CONF['transport_default'] = 'dovecot'; 
$CONF['vacation'] = 'NO'; 
$CONF['vacation_control'] = 'NO'; 
$CONF['vacation_control_admin'] = 'NO'; 
$CONF['backup'] = 'YES'; 
$CONF['sendmail'] = 'YES'; 
$CONF['logging'] = 'YES'; 
$CONF['fetchmail'] = 'YES'; 
$CONF['fetchmail_extra_options'] = 'YES'; 
$CONF['footer_text'] = 'Return to mailserver.example.com'; 
$CONF['footer_link'] = 'http://mailserver.example.com'; 
$CONF['used_quotas'] = 'YES'; 
$CONF['new_quota_table'] = 'YES'; 
?>
