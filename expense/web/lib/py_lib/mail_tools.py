import imaplib
 
class mail_tools:
 
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    __version__ = '0.1'
 
    def open_mail_box(self, server, user, pwd):
        try:
            self.mailbox = imaplib.IMAP4(server)
            self.mailbox.login(user, pwd)
            self.mailbox.select()
        except imaplib.IMAP4.error:
            raise AssertionError('Could not connect to the mailbox')
 
    def check_mail(self, *args):
        r, self.item = self.mailbox.search(None, *args)
        self.item = self.item[0].split()
        if self.item == []:
            raise AssertionError("No mail found")       
 
    def close_mailbox(self):
        self.mailbox.close() 
		
if __name__ == '__main__':
    open_mail_box(self,"imap.googlemail.com", "vntestexpense@gmail.com", "lhvtester9")  