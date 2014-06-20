require 'shellwords'


def bash(command)
	escaped_command = Shellwords.escape(command)
	system "bash -c #{escaped_command}"
end

ARGV.each do |a|
	bash("#{a}")
end