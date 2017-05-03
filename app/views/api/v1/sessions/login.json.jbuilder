if @status_code == 200
  json.saint do
    json.id @saint.id
    json.name @saint.name
    json.email @saint.email
    json.hall @saint.hall
    json.phone @saint.phone
    json.gender @saint.gender
  end
  json.token @saint_token.token

elsif @status_code == 422
  json.message t('api_v1.client_error.422_login_failed.message')
end