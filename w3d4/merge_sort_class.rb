class Array
    def self.merge_sort
        return self if self.length <= 1

        mid = array.length/2
        left = self[0...mid].merge_sort
        right = self[mid..-1].merge_sort

        merge(left, right)
    end

    def merge(left, right)
      combined = []
        until left.empty? || right.empty?
            if left.first <= right.first
                result << left.shift
            else
                result << right.shift
            end
        end
      result + left + right
    end
end