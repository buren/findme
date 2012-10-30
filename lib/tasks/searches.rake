desc "Deletes all searches in the database that are older than one week"
task :delete_old_searches => :enviroment do 
	Search.delete_all ["created_at < ?", 1.week.ago]
end