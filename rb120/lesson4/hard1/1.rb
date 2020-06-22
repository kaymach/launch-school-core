class SecretFile
  def initialize(secret_data, log)
    @data = secret_data
    @log = log
  end

  def data
    @log.create_log_entry
    @date
  end
end

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end

log = SecurityLogger.new()
file = SecretFile.new("lala", log)
