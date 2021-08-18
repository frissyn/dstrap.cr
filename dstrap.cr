require "colorize"

targets : Array(String) = [".", ".."]
emojis : Hash(String, String) = {
    "LICENSE" => "⚖️",
    ".*\.(md|rst|txt)" => "📝",
    ".*\.(py|js|rb|go|rs|c|cs|cpp)$" => "🖥️",
    "(config.json)|(.*\.(yml|yaml|toml|ini))$" => "⚙️",
    "(package.json)|(package-lock.json)|(.*\.lock)$" => "📦"
}

max_len : Int32 = [
    Dir.children(targets[0]).max_by { |d| d.size},
    Dir.children(targets[1]).max_by { |d| d.size}
].max.size
puts max_len
# Display current directory
print("pwd".colorize(:red).mode(:bold))
print(": #{File.basename(Dir.current)}/\n".colorize.mode(:bold))


# List contents of each target
targets.each do |dirname|
    print("\n#{dirname}/".colorize.mode(:bold))

    Dir.children("#{dirname}/").each do |f|

        file : File = File.new("#{dirname}/#{f}")
        info : File::Info = file.info

        suf : String = File.directory?(file.path) ? "/" : " "
        pre : String = File.directory?(file.path) ? "📂" : "📃"

        emojis.each do |key, val| 
            pre = /#{key}/ =~ f ? val : pre
        end

        print(
            "\n  #{pre}  #{f}#{suf}".ljust(max_len + 20, ' ').colorize.mode(:bold),
            "\t", info.permissions.to_s.split(' ')[0].colorize(:light_cyan),
            " ", "#{info.size} B".colorize(:light_yellow).mode(:underline)
        )
    end
end


# Flush and newline
puts
