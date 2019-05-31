class Key
  def random
    rand(99999).to_s.rjust(5, "0")
  end
end
