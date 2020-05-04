## diaryman

Diary Manager. I've deduced the lack of diary is because of hussle required to create a file each day. With this diaryman, a simple alias would create the file in the correct place while opening it for editing with the best editor ever.

## Learning

Depositing learnings to a repository with a simple command e.g. `learn python`. Organized into 500 line md files, automatically.

## bashrc functions.

`..` function:

    aperocky@spacehub:~/workspace/projects/portscan$ ..
    aperocky@spacehub:~/workspace/projects$

    aperocky@spacehub:~/workspace/projects/portscan$ .. 2
    aperocky@spacehub:~/workspace$

`ag` function:

    aperocky@spacehub:~/workspace/projects/portscan$ ag worker
    ./portscan.py-105-        queue_thread.start()
    ./portscan.py-106-        for i in range(self.thread_num):
    ./portscan.py:107:            t = threading.Thread(target=self.worker)
    ./portscan.py-108-            t.daemon = True
    ./portscan.py-109-            t.start()
    --
    --
    ./portscan.py-114-        self.q.join()
    ./portscan.py-115-
    ./portscan.py:116:    def worker(self):
    ./portscan.py:117:        # Worker threads that take ports from queue and consume it
    ./portscan.py-118-        while True: # never stop working!
    ./portscan.py-119-            work = self.q.get()
