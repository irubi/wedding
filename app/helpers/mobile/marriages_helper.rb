module Mobile::MarriagesHelper
  def number_to_alph(index)
    alph_arr = ("a".."z").to_a
    alph_arr[index]
  end
end
