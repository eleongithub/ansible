#!/usr/bin/python

from ansible.module_utils.basic import *

import psycopg2

def postgres_user(data):  
    
    has_changed = False
    
    hostname = data['hostname']
    
    port = data['port']
    
    user = data['user']
    
    password = data['password']
    
    roles = data['roles']
    
    conn = psycopg2.connect(database="postgres", user="postgres", password="postgres", host=hostname, port=port)
    
    cur = conn.cursor()
    
    request = "SELECT count(*) FROM pg_user WHERE usename='{}'".format(user)
    
    cur.execute("SELECT count(*) FROM pg_user WHERE usename='{}'".format(user))
    
    exists = cur.fetchone()
    
    if exists[0]==0:
        insert_request = "CREATE USER  {} LOGIN password '{}' CREATEROLE {}".format(user,password, roles);
        cur.execute(insert_request)
        conn.commit()
        message = "User '{}' have been created successfully".format(user)
    else:
        message = "User '{}' already exists in the database".format(user)
    
    result={
        "Result of operations ":message
    }
    
    return (has_changed, result)


    
def main():
    
    fields ={
        "hostname": {"required": False, "default": "localhost", "type": "str"},
        "port": {"required": False, "default": "5432", "type": "str"},
        "user": {"required": True, "type": "str"},
        "password": {"required": True, "type": "str"},
        "roles": {"required": False, "default": "", "type": "str"}
    }
    
    module = AnsibleModule(argument_spec=fields)
    has_changed, result = postgres_user(module.params)
    module.exit_json(changed=False, meta=result)


if __name__ == '__main__':  
    main()