staff=[
    {n:"A",dept:"Web"},
    {n:"B",dept:"HR"},
    {n:"C",dept:"Web"}
]
groups=staff.group_by{|s| s[:dept]}
counts=groups.transform_values(&:size)
p groups
p counts