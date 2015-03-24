#!/usr/bin/python

import paramiko
import json
import os


class SSHConnect:

    def __init__(self, server):
        os.chdir(os.path.dirname(os.path.realpath(__file__)))
        servers = json.loads(open('../conf/servers.json').read())
        self.server_ip = str(servers[server]['ip'])
        self.server_port = servers[server]['port']
        self.username = str(servers[server]['un'])
        key_file_path = str('../conf/keys/%s' % (servers[server]['keyfile']))
        self.key = paramiko.RSAKey.from_private_key_file(key_file_path,
                                                         password=str(servers[server]['keyfile_pass']))
        self.mysql = servers[server]['mysql']

    def SSHConnect(self):
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        ssh.connect(self.server_ip, port=self.server_port,
                    username=self.username, pkey=self.key)
        self.ssh = ssh

    def SSHClose(self):
        self.ssh.close()

    def SSHCommand(self, command):
        ssh = self.ssh
        stdin, stdout, stderr = ssh.exec_command(command)
        data = stdout.read().splitlines()
        return data

    def ResetDB(self):
        self.SSHConnect()
        ssh = self.ssh
        command = 'mysql -p%s -u%s %s < %s' % (self.mysql['password'],
                                               self.mysql['user'],
                                               self.mysql['database'],
                                               self.mysql['reset_file'])
        command2 = 'mysql -p%s -u%s %s -e \"select count(*) from users;\"' % (
        self.mysql['password'], self.mysql['user'], self.mysql['database'])
        stdin, stdout, stderr = ssh.exec_command(command)
        stdin2, stdout2, stderr2 = ssh.exec_command(command2)
        data = stdout2.readlines()[1]
        self.SSHClose()
        if int(data) == 2:
            return True
        else:
            return False

    def LockAccount(self, account_name):
        self.SSHConnect()
        ssh = self.ssh
        command = 'mysql -p%s -u%s %s -e \"select id from users where email=\'%s\';\"' % (self.mysql['password'],
                                                                                          self.mysql['user'],
                                                                                          self.mysql['database'], account_name)
        stdin, stdout, stderr = ssh.exec_command(command)
        id = stdout.readlines()[1]
        command2 = 'mysql -p%s -u%s %s -e \"update users set status=\'Lock\' where id=%s;\"' % (self.mysql['password'],
                                                                                                self.mysql['user'],
                                                                                                self.mysql['database'], id)
        stdin2, stdout2, stderr2 = ssh.exec_command(command2)
        self.SSHClose()

    def InactivateAccount(self, account_name):
        self.SSHConnect()
        ssh = self.ssh
        command = 'mysql -p%s -u%s %s -e \"select id from users where email=\'%s\';\"' % (self.mysql['password'],
                                                                                          self.mysql['user'],
                                                                                          self.mysql['database'], account_name)
        stdin, stdout, stderr = ssh.exec_command(command)
        id = stdout.readlines()[1]
        command2 = 'mysql -p%s -u%s %s -e \"update users set status=\'Inactive\' where id=%s;\"' % (self.mysql['password'],
                                                                                                    self.mysql['user'],
                                                                                                    self.mysql['database'],id)
        stdin2, stdout2, stderr2 = ssh.exec_command(command2)
        self.SSHClose()

if __name__ == '__main__':
    s = SSHConnect('dev05')
    s.ResetDB()

# For writting to the command prompt (including pws) use stdin.write() followed by
# stdin.flush()
