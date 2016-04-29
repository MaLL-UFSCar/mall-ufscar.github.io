# Find the standard picture file by member's name

module Jekyll
   module PictureFile

      def addpicture(members)
         for member in members do
            member['pic'] = picturename(member['name'])
         end
      end

      def picturename(name)
         return name.gsub(/\s+/, "") + ".jpg"
      end
   end
end

Liquid::Template.register_filter(Jekyll::PictureFile)
