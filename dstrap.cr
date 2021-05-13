require "colorize"


# Display current directory
print("pwd".colorize(:red).mode(:bold), ':')
print(" #{File.basename(Dir.current)}/\n".colorize.mode(:bold))


# List current directory children
print("\n./".colorize.mode(:bold))
Dir.children(".").each do |d|
    info = File.info("./#{d}")
    aft = File.directory?(d) ? "/" : ""
    pre = File.directory?(d) ? "  📂  " : "  📃  "

    print(
        "\n#{pre}#{d.colorize.mode(:bold)}#{aft}".ljust(30),
        info.permissions.to_s.split(' ')[0].colorize(:light_cyan),  
        "  ", "#{info.size} B".colorize(:light_yellow).mode(:underline)
    )
end


# List parent directory children
print("\n../".colorize.mode(:bold))
Dir.children("..").each do |d|
    info = File.info("../#{d}")
    aft = File.directory?(d) ? "/" : ""
    pre = File.directory?(d) ? "  📂  " : "  📃  "

    print(
        "\n#{pre}#{d.colorize.mode(:bold)}#{aft}".ljust(30),
        info.permissions.to_s.split(' ')[0].colorize(:light_cyan), 
        "  ", "#{info.size} B".colorize(:light_yellow).mode(:underline)
    )
end


# Flush and newline
puts