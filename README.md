# THE *libmigraine* PROJECT
This project involves building a shared library to manage migraine attack
episodes.

Different applications in different programming languages may link to the
library, and allow the user to register and analyze the data.

# OBJECTIVES
1. Create a shared library to register and query episodes of migraine using a
   database system.
2. Learn how to program a shared library in C.
3. Learn how to build the library using different build systems.
4. Use 'git' as a control version system.
5. Improve my English, which is not my first language.

# REMARKS
1. The project will use *sqlite3* as the database system, although it could be
   changed in the future if needed.
1. The library, *libmigraine.so* is the central piece communicating with the 
   database.  The public API of the library is database agnostic, as stated in the 
preceding remark.
1. I intend to use various build systems for the software: *meson*, *cmake*,
   *make* and even scripts. This will complicate the tree structure of the
   project, but I need to do this in order to familiarize with different
   build systems.
1. I will use English in this project. It is a daunting task, as I am not very
   fluent in this language. So I expect many language problems, that I intend to
   fix as I find them.
1. I intend to add comments in a different text file to explain an justify  the
   source code. But, at the same time, I would like to keep the source code
   comments as concise as possible.

# STRUCTURE OF THE PROJECT
	The strucure of the project is not a standard one, mainly due to my
	wanting to learn to use different build systems (in normal projects only
	one building system is used, which might simplify things a lot.

	The main directory 'libmigraine' consists of:

## Four files:
1. README.md:
	This file.
1. LICENSE:
   The license of the project.
1. TODO:
   Different new ideas to implement or to fix some problems.
1. .gitignore:
  Part of the *git* control version system used to neglect some files in the project.

## Four subdirectories
1. src:
  The source code of the library.
1. include:
  Header files.
1. build_systems:
   One directory for every build system used.
1. .git:
   Part of the *git* control version system that holds the complete history of the project.

# MORE INFO
More README files will be added into some directories (but not all).

