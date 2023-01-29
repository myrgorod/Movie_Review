json.extract! review, :id, :ratind, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
