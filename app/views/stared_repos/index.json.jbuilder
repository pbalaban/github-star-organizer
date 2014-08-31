json.array!(@stared_repos) do |repo|
  json.cache! repo do
    json.extract! repo, :id, :name, :stargazers_count, :html_url, :description
  end
end