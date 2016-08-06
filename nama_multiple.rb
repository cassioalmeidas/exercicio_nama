# Add :nama_multiple method in Fixnum class
Fixnum.module_eval do 
  def nama_multiple(args)
    names = []
    args[:replace].keys.each do |k|
      if self%k == 0 
        names.push(args[:replace].fetch(k))
      end
    end
    names.empty? ? self : names
  end
end