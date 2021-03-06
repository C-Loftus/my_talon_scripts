app: vscode
mode: command

-
new window:
    key(ctrl-shift-n)

focus lines:
    key(ctrl-1)


run python:
    key(ctrl-s)
    sleep(.1)
    key(ctrl-shift-alt-d)
    sleep(.1)
    key(ctrl-f10)

kill program:
    user.vscode("workbench.action.terminal.focus")
    sleep(.25)
    key(ctrl-c)


restart python:
    key(ctrl-shift-alt-f)
    sleep(.25)
    key(ctrl-c)
    key(ctrl-s)
    sleep(.1)
    key(ctrl-shift-alt-d)
    sleep(.1)
    key(ctrl-f10)

previous command:
    user.vscode("workbench.action.terminal.focus")
    sleep(.25)
    key(up)
    key(enter)

backup:
    key(ctrl-shift-alt-f)
    user.paste("fgc")
    key(enter)

switch project:
    key(ctrl-r)
    sleep(0.25)
    key(enter)

special:
    "``"
    key(left:1)
    
collapse folders: user.vscode("workbench.files.action.collapseExplorerFolders")
format: user.vscode("editor.action.formatDocument")


run rust:
    user.vscode("workbench.action.terminal.focus")
    sleep(.1)
    "cargo run"
    sleep(.1)
    key(enter)
run typescript:
    user.vscode("workbench.action.terminal.focus")
    sleep(.3)
    user.paste("npx ts-node src/")

Compile typescript:
    user.vscode("workbench.action.terminal.focus")
    sleep(.3)
    user.paste("npx tsc; node dist/src/index.js")
    key(enter)
Compile typescript tests:
    user.vscode("workbench.action.terminal.focus")
    sleep(.3)
    user.paste("npx tsc; node dist/src/tests.js")
    key(enter)
dance:
    "// "