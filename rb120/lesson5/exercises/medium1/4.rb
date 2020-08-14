require "pry"

class CircularQueue
  def initialize(size)
    @buffer = [nil] * size
    @next_position = 0
    @oldest_position = 0
  end

  def enqueue(object)
    binding.pry
    unless @buffer[@next_position].nil?
      @oldest_position = increment(@next_position)
    end

    @buffer[@next_position] = object
    @next_position = increment(@next_position)
  end

  def dequeue
    binding.pry
    value = @buffer[@oldest_position]
    @buffer[@oldest_position] = nil
    @oldest_position = increment(@oldest_position) unless value.nil?
    value
  end

  private

  def increment(position)
    binding.pry
    (position + 1) % @buffer.size
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil



# some awful shit below where I attempt to remove objects in queue based on the Time class
# and deleting whichever is the oldest timestamp

# require "pry"

# class CircularQueue
#   attr_accessor :buffer

#   def initialize(buffer_size)
#     @buffer = Array.new(buffer_size)
#     @next_position = 0
#   end

#   def enqueue(object)
#     # add
#     binding.pry
#     test = Age.new(object)
#     @buffer[@next_position] = test
#     @next_position = increment(@next_position)
#   end

#   def dequeue(object = nil)
#     # remove
#     # binding.pry
#     return nil if buffer.empty? || buffer.count(nil) == 3
#     buffer.each do |i|
#       binding.pry
#       buffer.delete(i) if i.time == oldest_time
#     end
#   end

#   def increment(position)
#     (position + 1) % @buffer.size
#   end

#   def oldest_time
#     binding.pry
#     array = []
#     array << buffer[0].time unless buffer[0] == nil
#     array << buffer[1].time unless buffer[1] == nil
#     array << buffer[2].time unless buffer[2] == nil
#     cheese = array.sort.first

    
#   end
# end

# class Age
#   attr_accessor :time

#   def initialize(num)
#     @num = num
#     @time = Time.new
#   end
# end
