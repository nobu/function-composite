module Function
  module Composite
    VERSION = "0.1.0"

    refine(Symbol) do
      def call(*args, &block)
        to_proc.call(*args, &block)
      end

      def <<(other = (b = true), &block)
        to_proc << (b ? block : other.to_proc)
      end

      def >>(other = (b = true), &block)
        to_proc >> (b ? block : other.to_proc)
      end
    end

    refine(Proc) do
      def <<(other)
        super(other.to_proc)
      end

      def >>(other)
        super(other.to_proc)
      end
    end
  end
end
