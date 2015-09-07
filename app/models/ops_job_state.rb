class OpsJobState < ActiveRecord::Base
  self.table_name = 'tpcom.ops_job_state'
  # attr_accessor PROVIDES

  scope :jobstate_w_jobname, lambda { |term| where('job_name = ?', "#{term}") }

  ID_REGISTER[:JOB_NAME] = {
      is_primary: false,
      OpsJobState: {
          jobstate_w_jobname: {
              priority: 1,
              with: ['JOB_NAME'],
              handle: 'jobstate_w_jobname'
          }
      }
  }

end
