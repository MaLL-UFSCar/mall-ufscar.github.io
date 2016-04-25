# Sort members by position then name

module Jekyll
  module MemberSorting
    def sortmembers(members)
       positions = ['Professor', 'PhD Student', 'MsC Student', 'Contributor', 'Undergraduate']
       for member in members do
         member['posidx'] = positions.index(member['position'])
       end
       return members.sort { |a, b| [a['posidx'], a['name']] <=> [b['posidx'], b['name']] }
    end
  end
end

Liquid::Template.register_filter(Jekyll::MemberSorting)
