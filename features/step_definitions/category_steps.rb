Given /the following categories exist/ do |categories_table|
  categories_table.hashes.each do |cat|
    Category.create cat
  end
end

