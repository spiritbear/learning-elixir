
# read from a file, the return is a tuple {:ok, content} or {:error, reason}
# the code below is good if you want to read small files (less than a MegaByte)
{:ok, content} = File.read("data/haiku.txt")

# Streaming Files
# this code is used when you want to read a file line by line
# the code below is good if you want to read a file line by line
# The return type here will be a stream
# %File.Stream{
#   path: "data/haiku.txt",
#   modes: [:raw, :read_ahead, :binary],
#   line_or_bytes: :line,
#   raw: true
# }
stream = File.stream!("data/haiku.txt")
# for the & syntax, refer to the documentation on methods
new_content = stream |> Enum.map(&String.trim/1) |> Enum.map(&String.reverse/1) |> Enum.join("\n")

# writing to a file
File.write("data/haiku-output.txt", new_content)

# deleting a file, this will remove a file permanently
File.rm("delete-me.txt")
