## diaryman

Diary Manager for lazy software engineers who use vim.

`diaryman` automatically creates a file in specified diary directory if it doesn't exist: `$DIARY_DIR/$year/$month/$day.md` and opens it with `vim` in edit mode. If the file already exist, it will just open it, this allow multiple edits throughout the day.

It also allow you to make up for diaries missed by appending a date behind the diary, e.g. `diary 2020-01-01` will open the diary on that date. Additionally, `diary cat` will `cat` the content of current days' diary.

This works great for personal diaries and also for work task organization.
