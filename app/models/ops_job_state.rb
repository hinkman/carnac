class OpsJobState < ActiveRecord::Base
  self.table_name = "tpcom.ops_job_state"

  scope :jobstate_w_jobname, lambda { |term| where('job_name = ?', "#{term}") }
  # scope :mastpoid_w_poid, lambda { |term| where("purchaseorderid = ? AND masterpurchaseorderid is not null", "%#{term}%") }
end
