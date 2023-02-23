elements = ['two', 'three', 'one']
hash_to_be_sorted = {'three' => 3, 'two' => 2, 'one' => 1}
proc = Proc.new{
  puts elements.map{|k| [k,hash_to_be_sorted[k]] }.to_h
}
proc.call
