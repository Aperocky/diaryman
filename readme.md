## diaryman

Diary Manager for lazy software engineers who use vim.

`diaryman` automatically creates a file in specified diary directory if it doesn't exist: 
`$DIARY_DIR/$year/$month/$day.md` and opens it with `vim` in edit mode. If the file already exist, 
it will just open it, this allow multiple edits throughout the day.

It also allow you to make up for diaries missed by appending a date behind the diary, 
e.g. `diary 2020-01-01` will open the diary on that date. 

### commands
`cat`:  cat the entire contents of current days' diary.
```sh
diaryman git:master ❯ diary cat                                                                                                                                                                       ✹ ✭
## 2023-04-19, Wednesday

hey look a wild JimmyRus appeared! 

dont match me because my name is jessica 

match me because im RusJimmyRuff

```

`find`: search all diaries for a string, then return the diary filepath and the matched line for that string. 
note the search is fuzzy on both sides and is also case insensitive. 
```sh
diaryman git:master ❯ diary find jimmy                                                                                                                                                                ✹ ✭
/Users/cflynn/codys_diary/2023/04/2023-04-19.md -> hey look a wild JimmyRus appeared! 
/Users/cflynn/codys_diary/2023/04/2023-04-19.md -> match me because im RusJimmyRuff

```

This works great for personal diaries and also for work task organization.
