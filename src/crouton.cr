module Crouton
  def self.go
    read, write = IO.pipe

    fork do
      read.close
      yield write
    end

    write.close
    read
  end
end
