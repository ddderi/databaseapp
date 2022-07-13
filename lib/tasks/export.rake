namespace :export do
    desc "Prints all database in a seeds.rb"
    task :seeds_format => :environment do
      Teacher.order(:id).all.each do |x|
        puts "Teacher.create(#{x.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','name','description','teacher_id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      end
      Article.order(:id).all.each do |x|
        puts "Article.create(#{x.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','name'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      end
      Excursion.order(:id).all.each do |x|
        puts "Excursion.create(#{x.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','article_id','student_id','excursion_date'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      end
      Student.order(:id).all.each do |x|
        puts "Student.create(#{x.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','name','article_id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      end
    end
  end