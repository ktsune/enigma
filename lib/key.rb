class Key
  def random
    Kernel.rand(99999).to_s.rjust(5, "0")
  end
end
