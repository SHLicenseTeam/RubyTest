require 'csv'

def getCsvFileList (csvFile)

  listAll = Hash[]

  CSV.foreach("data.csv") do |row|
    if row[0] == "Repo/Source of Dependency"
      next
    end

    repo = Array.new
    repo[0] = row[1] #compoent Name
    repo[1] = row[2] #version
    repo[2] = row[3] #downloadURL
    repo[3] = row[4] #lisence

    if listAll.include?(row[0])
      listAll[row[0]][listAll[row[0]].size] = repo
    else
      repolist = Array.new
      repolist[0] = repo
      listAll.store(row[0],repolist)
    end
  end

  return listAll
end
