namespace :papers do
  desc 'Import all papers from all known twitter accounts'
  task import_all: :environment do
    ImportPapersFromTweets.new.do_import
  end
end