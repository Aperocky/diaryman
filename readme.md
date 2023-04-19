## diaryman

Diary Manager for lazy software engineers who use vim.

`diaryman` automatically creates a file in specified diary directory if it doesn't exist: 
`$DIARY_DIR/$year/$month/$day.md` and opens it with `vim` in edit mode. If the file already exist, 
it will just open it, this allow multiple edits throughout the day.

It also allow you to make up for diaries missed by appending a date behind the diary, 
e.g. `diary 2020-01-01` will open the diary on that date. 

### commands
`cat` the entire contents of current days' diary.
```sh
diary cat
```

`find`, search all diaries for a string, then return the diary filepath and the matched line for that string. 
```sh
diary find jimmyRus
```

This works great for personal diaries and also for work task organization.
