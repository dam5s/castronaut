module Castronaut
  class ExtraAttributes < Hash
    def to_bare_xml
      xml = to_xml(:skip_instruct => true, :root => 'remove-outer-tag')
      xml.gsub(%r{</?hash>}, '')
    end
  end
end