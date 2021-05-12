require "colorize"

# Current Directory
print("pwd".colorize(:red).mode(:bold), ':')
print(" #{File.basename(Dir.current)}/\n".colorize.mode(:bold))


# List Directory children
print("\n./".colorize.mode(:bold))
Dir.children(".").each do |d|
    unless d.starts_with?(".")
        if File.directory?(d)
            print(
                "\n  #{d.colorize.mode(:bold)}/".ljust(30, ' '),
                File.info("./#{d}").permissions.to_s.split(' ')[0]
            )
        else
            print(
                "\n  #{d.colorize.mode(:bold)}".ljust(30, ' '),
                File.info("./#{d}").permissions.to_s.split(' ')[0]
            )
        end
    end
end


# List parent children
print("\n../".colorize.mode(:bold))
Dir.children("..").each do |d|
    unless d.starts_with?(".")
        if File.directory?(d)
            print(
                "\n  #{d.colorize.mode(:bold)}/".ljust(30, ' '),
                File.info("../#{d}").permissions.to_s.split(' ')[0]
            )
        else
            print(
                "\n  #{d.colorize.mode(:bold)}".ljust(30, ' '),
                File.info("../#{d}").permissions.to_s.split(' ')[0]
            )
        end
    end
end


# Flush and newline
puts