-- require todo-comments
local todo_comments_status, todo_comments = pcall(require, "todo-comments")
if not todo_comments_status then
  return
end

-- default setup
todo_comments.setup()
