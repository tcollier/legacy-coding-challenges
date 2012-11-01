module Rpn
  def self.calculate(args)
    args.inject([]) do |s,o|
      begin
        s.push Float(o)
      rescue
        a = s.pop
        begin
          s.push a.send(o)
        rescue
          s.push s.pop.send(o, a)
        end
      end
    end.pop
  end
end
