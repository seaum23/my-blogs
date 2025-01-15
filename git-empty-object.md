Sometimes the pc may restart to stop abruptly when git is trying to update its objects. It that case it may show errors like:
`loose object is corrupted` and the loose object will be empty.

One solution would be to look for the object file in other peoples git repo. If they it, can be copied. Other times the file may not exists. In that case we can delete these empty files, at least that is my current understanding! We can remove all empty objects with the command below.

`find .git/objects/ -type f -empty | xargs rm`