require 'csv'

listAll = Hash[]

CSV.foreach("data.csv") do |row|
   if row[0] == "Repo/Source of Dependency"
      next
   end

   #component = Hash.new
   #component.store("version",row[2])
   #component.store("downloadURL",row[3])
   #component.store("lisence",row[4])

   repo = Array.new
      repo[0] = row[1]
      repo[1] = row[2]
      repo[2] = row[3]
      repo[3] = row[4]

   if listAll.include?(row[0])
      listAll[row[0]][listAll[row[0]].size] = repo
   else
      repolist = Array.new
      repolist[0] = repo
      listAll.store(row[0],repolist)
   end
   
end

puts "Hello"

puts listAll["rabbit-labrat"]

