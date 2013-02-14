# encoding: utf-8

class Correct
  def run
    g = Git.open('.')
<<<<<<< HEAD
    g.log(30000).each do |commit|
=======
    g.log(10).each do |commit|
>>>>>>> 56f1762... initial commit
      begin
        model = Commit.new(
          sha: commit.sha,
          author: commit.author.name,
          message: commit.message,
          diff: commit.diff_parent,
          committed_at: commit.date
        )
        model.save
        puts 'saved' # todo
      rescue => e
        puts e # todo
        puts commit.sha # todo
      end
    end
  end
end
