require 'sist02'
require 'open-uri'
require 'json'
require 'date'
require 'thor'

module Sist02
  module Cli
    class CiNii < Thor
      desc "cinii_articles NAID", "get cinii articles bibliography"
      def cinii_articles(naid)
        puts Sist02::CiNii.article_ref(naid)
        return Sist02::CiNii.article_ref(naid)
      end

      desc "cinii_books NCID", "get cinii books bibliography"
      def cinii_books(ncid)
        puts Sist02::CiNii.book_ref(ncid)
        return Sist02::CiNii.book_ref(ncid)
      end
    end
  end
end
