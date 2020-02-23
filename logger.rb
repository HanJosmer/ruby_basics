def log block_string, &proc
    @nest_indent = ""
    ($nest_level * 4).times {@nest_indent += " "}
    puts "#{@nest_indent}beginning #{block_string}..."
    $nest_level += 1
    @return_value = proc.call
    $nest_level -= 1
    @nest_indent = ""
    ($nest_level * 4).times {@nest_indent += " "}
    puts "#{@nest_indent}...#{block_string} finished.  Returning: #{@return_value}"
end

$nest_level = 0

log "nesting logger methods" do
    log "simple concatenation" do
        "Hello, " + "world!"
    end
    true
end
