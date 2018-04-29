# Note

Note is a bash script which opens a note for the underlying repository. 
The notes are stored separately from the repository, which prevents issues with git.
You can change the name, the origin, or the path of the repository and you will still be able to access the note.

## Installation

```
$ brew tap doodzik/tap
$ brew install note
```

To use note in Vim, add the following line to your .vimrc
```
set rtp+=/usr/local/opt/note
```

## Usage

Open the note for the underlying repository
```
$ note
```

Open a note for the repository for a given path
```
$ note ~
```

Print the path of the note
```
$ note --path-only 
```

### Vim

Open the note for the underlying repository
```
:Note
```

Open a note for the repository for a given path
```
:Note ~
```

Open the note for the underlying repository.
Unless not mapped onto a different command.
```
gn
```

### Cloud Synchronization

You can use a cloud synchronized folder as the location for your notes. 
For example, you can change the `NOTES_LOCATION` to point to the iCloud folder in your `.bashrc` file.
```
export NOTES_LOCATION="${HOME}/Library/Mobile\ Documents/com~apple~CloudDocs/.notes"
```

### Change your Editor

You can use your editor of choice by changing the `EDITOR` variable in your `.bashrc` file
```
export EDITOR="/usr/local/bin/vim"
```

## Special Thanks

* [@lastgabs](https://github.com/lastgabs) for giving me the idea for this project

