desc "Import data from all connected services. Called by the Heroku scheduler add-on"
task :import_data => :environment do
  NavelGazer::LinkedAccount.all.each do |account|
    puts "Importing from #{account.type}..."
    begin
      account.import
    rescue
      puts "Failed to import from #{account.type}:"
      puts $!
    end
  end
  puts "Done."
end