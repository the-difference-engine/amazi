json.id problem.id
json.description problem.description
json.active problem.active

json.user do
  json.id problem.user.id
  json.email problem.user.email
end
json.location do
  json.id problem.location.id
  json.address problem.location.address
  json.city problem.location.city
  json.state problem.location.state
  json.zip problem.location.zip
end