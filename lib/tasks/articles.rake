namespace :articles do
  desc "TODO"
  task reset_counter_cache: :environment do
    Article.all.each {|article| Article.reset_counters(article.id, :comments)}
    puts "Article cache reset"
  end

  # desc "example bash task"
  # task push_code: :environmnet do
  #   'git checkout master'
  #   'git push origin master'
  # end

  desc "Return the count of all articles"
  task count: :environment do
    puts Article.all.size
  end

end
