# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    candidates.each do |candidate|
      if candidate[:id] == id
        return candidate
      end
    end
    return nil
  end
  
  def experienced?(candidate)
    # Your code Here
    if candidate[:years_of_experience] >= 2
      return true
    else
      return false
    end
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    qualified_candidates = []
    candidates.each do |candidate|
      if experienced?(candidate) && github_points?(candidate) && languages?(candidate) && date_applied?(candidate) && age?(candidate)
        qualified_candidates << candidate
      end
    end
    return qualified_candidates
  end
  
  # More methods will go below

  def ordered_by_qualifications(candidates)
    candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }.reverse
  end