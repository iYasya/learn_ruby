class XmlDocument
  def initialize(flag=false)
    @indent = flag
    @indentation = 0
  end

  def method_missing(methodName, *args, &block)
    resultXML = String.new

    if @indent
      resultXML << "  " * @indentation
    end

    resultXML << "<#{methodName}"

    if args[0]
      args[0].each do |key,value|
        resultXML << " #{key}='#{value}'"
      end
    end

    if block
      resultXML << ">"

      if @indent
        resultXML << "\n"
        @indentation += 1
      end

      resultXML << yield

      if @indent
        @indentation -= 1
        resultXML << "  " * @indentation
      end

      resultXML << "</#{methodName}>"
      resultXML << "\n" if @indent
    else
      resultXML << "/>"
      resultXML << "\n" if @indent
    end
    resultXML
  end
end