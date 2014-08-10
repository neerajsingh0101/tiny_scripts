class CommandExecutor

  attr_reader :cmd

  def initialize cmd
    @cmd = cmd
  end

  def process
    puts cmd
    lines = []

    if Open3.respond_to?(:popen2e)
      Open3.popen2e(cmd) do |stdin, stdout_err, wait_thr|
        while line = stdout_err.gets
          puts line
          lines << line
        end

        exit_status = wait_thr.value
        unless exit_status.success?
          abort "FAILED !!! #{cmd}"
        end
      end
      lines
    else
      [`#{cmd}`]
    end
  end
end
