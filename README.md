# Deploy package to dev server

ideas for cli tool:

dpkg init:
might use global .dpkg.toml for configuration
creates .dpk/stuff folder and files and adds it to .git/info/exclude
example .dpkg/host TARGET_HOST, dpkg/target TARGET_BASE et..
dpkg init : will use the default dev server from global conf (host, user, auth, base-dir) and the current dir name as PKG_NAME
dpkg init --target=nondefaultname uses another entry from the global conf etc.
dpkg init --host=... --user=.. --blabla custom init

dpkg add .
dpkg add src/myfile.py
dpkg add --diff (adds unstaged changes)
dpkg restore .
dpkg restore src/myfile.py
dpkg restore --diff

dpkg push (always a push -f)
dpgk push -v (verbose to look cool)
