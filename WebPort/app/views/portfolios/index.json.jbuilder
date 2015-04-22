json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :info, :links, :content
  json.url portfolio_url(portfolio, format: :json)
end
