# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  ver1_major, ver1_minor = ver1.split('.')
  ver2_major, ver2_minor = ver2.split('.')
  major = ver1_major.to_i <=> ver2_major.to_i
  minor = ver1_minor.to_i <=> ver2_minor.to_i
  major.zero? ? minor : major
end
# END
