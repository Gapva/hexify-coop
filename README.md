# hexify-coop
A very simple Windows application that allows users to save/modify their sm64ex-coop chat color and use it elsewhere by pasting it (such as in playernames)

# installation
You can download the latest version of this application by looking in the Releases tab, or by looking for the file named "hexify-coop_v_x_x.zip" in the main branch, where x is a placeholder for the version.

# usage
Upon launching the application, two things should happen:

1. Your default web browser should open with a color picker page
2. Another window should popup with instructions on what to do with your hex color code

- Use the color picker page to copy hex colors or make your own using the color box at the top of the page.
- Paste or manually type your hex code whilst also properly following the instructions given in the other Windows menu.

Once you accept, you should see one or two more windows in-sequence depending on your selection. Read them thouroughly as they hold important information.

# additional usage
There are some additional things you can do to enhance your experience with this utility; some preferential.

### preferences
If you want to disable the color picker, create an empty file named `picker.config` and put it in `...\data\`.
If you want to disable the prompts when you launch the program, create an empty file named `setup.config` and put it in `...\data\` as well.

### hotkeys
To change your color code, press `ctrl+shift+d`.
To paste your color code anywhere (including external applications; not ingame), press `ctrl+shift+e`.
To paste a blank color code (white) for additional formatting, press `ctrl+shift+r`.
