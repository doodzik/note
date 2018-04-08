# Note

A bash function which opens a note file for the underlying repository. 
The note files are stored separately from the repository, which prevents issues with git.
You can change the name, the origin, or the path of the repository and your note will still be there.

## Installation

```
$ brew tap doodzik/tap
$ brew install note
```

To use note in Vim, add the following line to your .vimrc:
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

Open the note for the underlying repository in split view 
```
:Note
```

Open a note for the repository for a given path
```
:Note ~
```

Open the note for the underlying repository in split view.
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

## Special Thanks

* [@lastgabs](https://github.com/lastgabs) for giving me the idea for this project

