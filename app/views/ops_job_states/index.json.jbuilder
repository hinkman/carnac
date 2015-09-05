json.array!(@ops_job_states) do |ops_job_state|
  json.extract! ops_job_state, :id, :job_name, :date_started, :date_completed, :status, :message
  json.url ops_job_state_url(ops_job_state, format: :json)
end
